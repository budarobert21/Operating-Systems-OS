#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>

int x = 0;

pthread_mutex_t m;

void *thread(void *arg)
{
   int i;
   
   for (i = 0; i < 1000; i++)
   {
       pthread_mutex_lock(&m);
       x++;
       pthread_mutex_unlock(&m);
       /*
         mov eax, [x]
         add eax, 1; inc eax
         mov [x], eax
       */  
   } 

   return 0;
}

int main(int argc, char **argv)
{

   pthread_t *t;

   pthread_mutex_init(&m, 0);
   
   int n;
   int i;
   
   n=1000;
   
   t = malloc(n * sizeof(pthread_t));
   
   for (i = 0; i < n; i++)
   {
      pthread_create(&t[i], 0, thread, 0);
   }

   for (i = 0; i < n; i++)
   {
       pthread_join(t[i], 0);
   }
   
   free(t);
   
   pthread_mutex_destroy(&m);
   
   printf("x=%d\n", x);
   
   return 0;
}
















