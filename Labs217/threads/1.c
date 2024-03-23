#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>

typedef struct{
   int a;
   
   int b;

} pthread_arg;


int suma(int a, int b)
{

   return a + b;

}
void *thread(void *arg)
{
 
   pthread_arg *id = (pthread_arg *)arg;

   printf("%d ===> %d %d \n", id->a, id->a, id->b);

   int *s = malloc(sizeof(int));

   *s = suma (id->a, id->b);

   free(id);

   return s;
}


int main(int argc, char **argv)
{

   pthread_t *t;
   
   int n = atoi (argv[1]);
   int i;
   
//   n = 1000;
   
   t = malloc(n * sizeof(pthread_t));
   
   for (i = 0; i < n; i++)
   {
      pthread_arg *a = malloc(sizeof(pthread_arg));
      a->a = i;
      a->b = 3 * i - 4;   
      pthread_create(&t[i], 0, thread, (void *)a); //thread(a)
   }

   int **m = malloc(n * sizeof(int*));
   
   for (i = 0; i < n; i++)
   {
       pthread_join(t[i], (void *)&m[i]);
       printf("%d --> %d\n", i, *m[i]);
       free(m[i]);
   }
   
   free(t);
   
   free(m);
   return 0;
}
















