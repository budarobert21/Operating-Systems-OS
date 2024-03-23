#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>

// thread 1 generates numbers until it generates a multiple of "divisor" defined below
// thread 2 will print that number
// to actually see the conditional variable doing work, we have to start thread 2 before thread 1
// otherwise thread 1 will lock the mutex before thread 2 will have a chance to even start
// alternatively, we could use a barrier to ensure that both threads are created before either of them attempts to do work

#define divisor 5

typedef struct {
    int *num;
    pthread_mutex_t *mtx;
    pthread_cond_t *cond;
} data;

void *f(void *a) {
    data arg = *((data*) a);
    printf("Thread 1 is starting\n");
    pthread_mutex_lock(arg.mtx);
    printf("Thread 1 has locked the mutex\n");
    while(*(arg.num) == 0 || *(arg.num) % divisor != 0) {
        *(arg.num) = random() % 10000 + 1;
        printf("Thread 1 has generated %d\n", *(arg.num));
    }
    printf("Thread 1 sending the signal\n");
    pthread_cond_signal(arg.cond);
    printf("Thread 1 unlocking the mutex\n");
    pthread_mutex_unlock(arg.mtx);
    return NULL;
}

void *g(void *a) {
    data arg = *((data*) a);
    printf("Thread 2 is starting\n");
    pthread_mutex_lock(arg.mtx);
    printf("Thread 2 has locked the mutex\n");
    while(*(arg.num) == 0 || *(arg.num) % divisor != 0) {
        printf("Thread 2 is now waiting for a signal\n");
        pthread_cond_wait(arg.cond, arg.mtx);
    }
    printf("Thread 2 has been signaled to print %d\n", *(arg.num));
    pthread_mutex_unlock(arg.mtx);
    return NULL;
}

int main(int argc, char *argv[]) {
    srandom(getpid());
    pthread_mutex_t *mtx = malloc(sizeof(pthread_mutex_t));
    pthread_mutex_init(mtx, NULL);

    pthread_cond_t *cond = malloc(sizeof(pthread_cond_t));
    pthread_cond_init(cond, NULL);

    pthread_t th1, th2;
    data *args = malloc(sizeof(data) * 2);
    int *num = malloc(sizeof(int));
    *num = 0;
    for(int i = 0; i < 2; i++) {
        args[i].mtx = mtx;
        args[i].cond = cond;
        args[i].num = num;
    }

    if(0 != pthread_create(&th2, NULL, g, &args[1])) {
        perror("Error creating thread 2");
    }
    if(0 != pthread_create(&th1, NULL, f, &args[0])) {
        perror("Error creating thread 1");
    }

    pthread_join(th1, NULL);
    pthread_join(th2, NULL);

    pthread_mutex_destroy(mtx);
    pthread_cond_destroy(cond);

    free(num);
    free(args);
    free(cond);
    free(mtx);
    return 0;
}
