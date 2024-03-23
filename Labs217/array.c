#include <stdio.h>
#include <wait.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char **argv)
{

   int p[2];
   
   pipe(p);
   

   if ( ! fork() )
   {  
      close(p[0]);
      
      int l, *n;
      
      printf("l=");
      
      scanf("%d", &l);
      
      n = malloc(l * sizeof(int));
      
      int i;
      
      for (i = 0; i < l; i++)
      {
      
        printf("n[%d]=", i);

        scanf("%d", &n[i]);
      
      }
       
      write(p[1], &l, sizeof(int));
      
      for (i = 0; i < l; i++)
      {
      
        write(p[1], &n[i], sizeof(int));
      
      }      
   
      close(p[1]);

      free(n);
   
      return 0;
   }

   if ( ! fork() )
   {
      close(p[1]);
   
      int l, n, s, i;
   
      read(p[0], &l, sizeof(int));

      s = 0;
      
      for (i = 0; i < l; i++)
      { 
      
         read(p[0], &n, sizeof(int));
      
         s = s + n;
      }
      
      printf("s = %d\n", s);
    
      close(p[0]);
    
      return 0;
   } 
   
   close(p[0]);
   close(p[1]);
   
   wait(0);
   
   wait(0);

   return 0;
}