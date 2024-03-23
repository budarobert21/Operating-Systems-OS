#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>

typedef struct {
    int id;
    pthread_mutex_t *mtx;
    pthread_barrier_t *barr;
    int *num;
} data;

void *f(void *a) {
    data arg = *((data*) a);
    printf("Thread %d starting\n", arg.id);
    // all threads should print the previous message before starting the work
    pthread_barrier_wait(arg.barr);
    for(int i = 0; i < 1000; i++) {
        // isolate the critical section of the code and protect it using mutex
        pthread_mutex_lock(arg.mtx);
        *(arg.num) = *(arg.num) + 1;
        pthread_mutex_unlock(arg.mtx);
    }
    printf("Thread %d done\n", arg.id);
    // small example of returning a value in a thread, getting it in the main function and releasing the allocated memory
    int *x = malloc(sizeof(int));
    *x = random() % 1000;
    return x;
}

int main(int argc, char *argv[]) {
    if(argc < 2) {
        printf("Please provide a number as an argument\n");
        exit(1);
    }
    
    srandom(getpid());
    struct timeval start, stop;
    
    int n = atoi(argv[1]);
    pthread_mutex_t *mtx = malloc(sizeof(pthread_mutex_t));
    pthread_mutex_init(mtx, NULL);
    
    pthread_barrier_t *barr = malloc(sizeof(pthread_barrier_t));
    pthread_barrier_init(barr, NULL, n);
    
    pthread_t *th = malloc(sizeof(pthread_t) * n);
    data *args = malloc(sizeof(data) * n);
    int *num = malloc(sizeof(int));
    *num = 0;
    gettimeofday(&start, NULL);
    for(int i = 0; i < n; i++) {
        args[i].id = i;
        args[i].mtx = mtx;
        args[i].barr = barr;
        args[i].num = num;
        if(0 != pthread_create(&th[i], NULL, f, &args[i])) {
            perror("Error creating thread");
        }
    }

    for(int i = 0; i < n; i++) {
        // declare a pointer, pass the address of the pointer to pthread_join, which will store the address that was allocated in the thread
        int *x;
        pthread_join(th[i], (void **) &x);
        printf("Thread %d generated %d\n", i, *x);
        free(x);
    }
    
    gettimeofday(&stop, NULL);
    printf("Calculating result = %d took %f seconds\n", *num, (double)(stop.tv_usec - start.tv_usec) / 1000000 + (double) (stop.tv_sec - start.tv_sec));
    
    pthread_mutex_destroy(mtx);
    pthread_barrier_destroy(barr);
    
    free(num);
    free(args);
    free(th);
    free(barr);
    free(mtx);
    return 0;
}
