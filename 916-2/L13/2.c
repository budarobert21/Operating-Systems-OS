#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>
typedef struct {
    int id;
    int *frequency;
    char *str;
    pthread_mutex_t *mtx;
} data;

void *thrd_func(void *arg) {
    data d = *((data *) arg);
    for(int i = 0; i < strlen(d.str); i++) {
        if(d.str[i] >= 'a' && d.str[i] <= 'z') {
            // this many mutexes is an extreme case, since we use a lot of resources to maximize the theoretical number of threads that can run in parallel
            // in our case, we could theoretically have exactly one thread per lowercase letter that increments the corresponding position in the frequency array without causing any issues, as each element of the array is independent of the others
            // in practice, one mutex for the whole array might be enough in most cases
            // but sometimes speed is really critical and memory usage is not a concern, so tweaks like this should be at least heard of, if not known
            pthread_mutex_lock(&d.mtx[d.str[i] - 'a']);
            d.frequency[d.str[i] - 'a']++;
            pthread_mutex_unlock(&d.mtx[d.str[i] - 'a']);
        }
    }
    return NULL;
}

int main(int argc, char *argv[]) {
    if(argc < 2) {
        printf("Provide at least one argument\n");
        exit(1);
    }
    int thrd_nr = argc - 1;
    int size = 'z' - 'a' + 1;
    pthread_t *th = malloc(sizeof(pthread_t) * thrd_nr);
    pthread_mutex_t *mtx = malloc(sizeof(pthread_mutex_t) * size);
    for(int i = 0; i < size; i++)
        pthread_mutex_init(&mtx[i], NULL);
    data *th_arg = malloc(sizeof(data) * thrd_nr);
    int *frequency = malloc(sizeof(int) * size);
    memset(frequency, 0, sizeof(int) * size);
    for(int i = 0; i < thrd_nr; i++) {
        th_arg[i].id = i;
        th_arg[i].mtx = mtx;
        th_arg[i].str = argv[i + 1];
        th_arg[i].frequency = frequency;
        if(0 != pthread_create(&th[i], NULL, thrd_func, &th_arg[i])) {
            perror("Cannot create thread");
        }
    }

    for(int i = 0; i < thrd_nr; i++) {
        pthread_join(th[i], NULL);
    }

    for(int i = 0; i < size; i++) {
        printf("%c -> %d\n", (char) i + 'a', frequency[i]);
        pthread_mutex_destroy(&mtx[i]);
    }

    free(mtx);
    free(th_arg);
    free(th);
    free(frequency);
    return 0;
}
