// This is like problem 4 but it cycles through any number of threads instead of alternating between two

#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <sys/types.h>
#include <unistd.h>

typedef struct {
    int id;
    int *index; // current index on which to add a number, if even, add even numbers, if odd, add odd numbers
    int *arr; // array in which to add a number
    int max_size;
    int thrd_nr; // number of threads that take turns
    pthread_mutex_t *mtx;
    pthread_cond_t *cond;
} data;

void *thrd_func(void *arg) {
    data d = *((data *) arg);
    while(1) {
        pthread_mutex_lock(d.mtx);
        while(d.id != *(d.index) % d.thrd_nr) {
            pthread_cond_wait(d.cond, d.mtx);
        }
        if(*(d.index) >= d.max_size) {
            //if we use the index to figure out whose turn it is, we have to increment it once to make sure the other thread also stops
            *(d.index) += 1;
            break;
        }
        // for the purpose of showing more than two threads taking turns, we won't be generating random numbers, as it is easier to see who is doing what
        int nr = d.id;
        printf("Thread %d - index %d - added number %d\n", d.id, *(d.index), nr);
        d.arr[*(d.index)] = nr;
        *(d.index) += 1;
        // if more than one thread is waiting on a conditional variable and we need a specific thread to wake up after a signal, we have to broadcast so all threads wake up and recheck the state of the condition
        pthread_cond_broadcast(d.cond);
        pthread_mutex_unlock(d.mtx);
    }
    pthread_cond_broadcast(d.cond);
    pthread_mutex_unlock(d.mtx);
    return NULL;
}

int main(int argc, char *argv[]) {
    if(argc < 3) {
        printf("Please provide two arguments: the array capacity; the number of threads\n");
        exit(1);
    }

    int max_size = atoi(argv[1]);

    int thrd_nr = atoi(argv[2]);
    
    pthread_mutex_t *mtx = malloc(sizeof(pthread_mutex_t));
    pthread_cond_t *cond = malloc(sizeof(pthread_cond_t));

    srandom(getpid());
    pthread_mutex_init(mtx, NULL);
    pthread_cond_init(cond, NULL);    

    

    pthread_t *th = malloc(sizeof(pthread_t) * thrd_nr);
    data *th_arg = malloc(sizeof(data) * thrd_nr);
    int *index = malloc(sizeof(int));
    int *arr = malloc(sizeof(int) * max_size);
    *index = 0;   
    for(int i = 0; i < thrd_nr; i++) {
        th_arg[i].id = i;
        th_arg[i].mtx = mtx;
        th_arg[i].cond = cond;
        th_arg[i].index = index;
        th_arg[i].max_size = max_size;
        th_arg[i].arr = arr;
        th_arg[i].thrd_nr = thrd_nr;
        if(0 != pthread_create(&th[i], NULL, thrd_func, &th_arg[i])) {
            perror("Cannot create thread");
        }
    }

    for(int i = 0; i < thrd_nr; i++) {
        pthread_join(th[i], NULL);
    }

    for(int i = 0; i < max_size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    pthread_cond_destroy(cond);
    pthread_mutex_destroy(mtx);

    free(cond);
    free(mtx);
    free(th_arg);
    free(th);
    free(index);
    free(arr);
    return 0;
}
