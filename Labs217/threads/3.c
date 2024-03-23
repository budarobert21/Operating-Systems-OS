#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <semaphore.h>
#include <unistd.h>

sem_t s;

void *thread(void *arg)
{
 
   int *id = (int *)arg;

   printf("Thread %d: astept la coada la magazin.\n", *id);
   
   sem_wait(&s);

   printf("thread %d: am intrat in magazin.\n", *id);
   
   printf("thread %d: imi fac cumparaturile.\n", *id);
   
   sleep(5);
   
   printf("Thread %d: ies din magazin.\n", *id);

   sem_post(&s);

   free(id);

   return 0;
}


int main(int argc, char **argv)
{

   pthread_t *t;
   
   int n = atoi (argv[1]);
   int i;
   
   sem_init(&s, 0, atoi(argv[2]));
   
   t = malloc(n * sizeof(pthread_t));
   
   for (i = 0; i < n; i++)
   {
      int *a = malloc(sizeof(int));
      *a = i;
      pthread_create(&t[i], 0, thread, (void *)a); //thread(a)
   }

   for (i = 0; i < n; i++)
   {
       pthread_join(t[i], 0);
   }
   
   free(t);

   sem_close(&s);
   
   return 0;
}
















