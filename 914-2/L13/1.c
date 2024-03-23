#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <sys/types.h>
#include <unistd.h>

typedef struct {
    int id;
    int *n;
    pthread_mutex_t *mtx;
} data;

void *thrd_func(void *arg) {
    data d = *((data *) arg);
    while(1) {
        pthread_mutex_lock(d.mtx);
        if(abs(*(d.n)) > 500) {
            printf("Thread %d detected that the n value is: %4d -> stopping\n", d.id, *(d.n));
            pthread_mutex_unlock(d.mtx);
            break;
        }
        int nr = random() % 1001 - 500;
        *(d.n) += nr;
        printf("Thread %d generated number %4d - new n value is: %4d\n", d.id, nr, *(d.n));
        pthread_mutex_unlock(d.mtx);
        // sleep for 100 nanoseconds so that other threads may actually startup and do things
        // this is not necessary in an actual solution but here it can illustrate how threads do things at the same time
        usleep(100);
    }
    return NULL;
}

int main(int argc, char *argv[]) {
    srandom(getpid());
    pthread_mutex_t *mtx = malloc(sizeof(pthread_mutex_t));
    pthread_mutex_init(mtx, NULL);
    int thrd_nr = 3;

    pthread_t *th = malloc(sizeof(pthread_t) * thrd_nr);
    data *th_arg = malloc(sizeof(data) * thrd_nr);
    int *n = malloc(sizeof(int));
    *n = 0;
    for(int i = 0; i < thrd_nr; i++) {
        th_arg[i].id = i;
        th_arg[i].mtx = mtx;
        th_arg[i].n = n;
        if(0 != pthread_create(&th[i], NULL, thrd_func, &th_arg[i])) {
            perror("Cannot create thread");
        }
    }

    for(int i = 0; i < thrd_nr; i++) {
        pthread_join(th[i], NULL);
    }

    pthread_mutex_destroy(mtx);

    free(mtx);
    free(th_arg);
    free(th);
    free(n);
    return 0;
}
