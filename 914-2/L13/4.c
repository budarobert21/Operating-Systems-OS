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
    pthread_mutex_t *mtx;
    pthread_cond_t *cond;
} data;

void *thrd_func(void *arg) {
    data d = *((data *) arg);
    while(1) {
        pthread_mutex_lock(d.mtx);
        while(d.id != *(d.index) % 2) {
            pthread_cond_wait(d.cond, d.mtx);
        }
        if(*(d.index) >= d.max_size) {
            //if we use the index to figure out whose turn it is, we have to increment it once to make sure the other thread also stops
            *(d.index) += 1;
            break;
        }
        int nr = (random() % 50) * 2 + d.id;
        printf("Thread %d - index %d - added number %d\n", d.id, *(d.index), nr);
        d.arr[*(d.index)] = nr;
        *(d.index) += 1;
        pthread_cond_signal(d.cond);
        pthread_mutex_unlock(d.mtx);
    }
    pthread_cond_signal(d.cond);
    pthread_mutex_unlock(d.mtx);
    return NULL;
}

int main(int argc, char *argv[]) {
    if(argc < 2) {
        printf("Please provide an argument\n");
        exit(1);
    }

    int max_size = atoi(argv[1]);

    pthread_mutex_t *mtx = malloc(sizeof(pthread_mutex_t));
    pthread_cond_t *cond = malloc(sizeof(pthread_cond_t));

    srandom(getpid());
    pthread_mutex_init(mtx, NULL);
    pthread_cond_init(cond, NULL);    

    
    int thrd_nr = 2;

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
