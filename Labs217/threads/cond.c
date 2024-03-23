#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>


int max = 1500;

int n = 0;

pthread_mutex_t m;

pthread_cond_t c, cwo;

int wmw = 0; // worker must wait

int wamw = 1; //wathcer must wait

void * worker(void *arg)
{

    int i;
    
    for (i = 0; i < max; i++)
    {
     
       pthread_mutex_lock(&m);
       
       while (wmw)
       {
       
         pthread_cond_wait(&cwo, &m);
       
       }
       
       n++;
       
       if (n % 5 == 0)
       {
       
           printf("Worker sendig signal at %d.\n", n);
           wmw = 1;
           wamw = 0;
           pthread_cond_signal(&c);
       
       }
       
       pthread_mutex_unlock(&m);
    
    }

   return 0;

}



void *watcher(void *arg)
{

   pthread_mutex_lock(&m);
   
   while(1)
   {
   
      while(wamw)
      {
      
        pthread_cond_wait(&c, &m);
        //mutex unlock m
        //wait signal c
        //mutex lock m
      }
   
      printf("Watcher n = %d.\n", n);
   
      wmw = 0;
      
      wamw = 1;
   
      pthread_cond_broadcast(&cwo);
      
      if (n == (max * 5))
      {
      
         break;
      
      }
   
      pthread_mutex_unlock(&m);

   }
   
   pthread_mutex_unlock(&m);

   return 0;

}


int main(int argc, char ** argv)
{

   //int t = atoi(argv[1]);
   
   int t = 5;
   
   pthread_mutex_init(&m, 0);
   
   pthread_cond_init(&c, 0);
   
   pthread_cond_init(&cwo, 0);      
   
   pthread_t *th = malloc(t * sizeof(pthread_t));

   pthread_t w;
   
   int i;
   
   pthread_create(&w, 0, watcher, 0);
   
   for (i = 0; i < t; i++)
   {
   
      pthread_create(&th[i], 0, worker, 0);
   
   }
   
   for (i = 0; i < t; i++)
   {
   
      pthread_join(th[i], 0);
   
   }
   
   pthread_join(w, 0);
   
   free(th) ;

   pthread_mutex_destroy(&m);
   
   pthread_cond_destroy(&c);
   
   pthread_cond_destroy(&cwo);      

   return 0;
} 