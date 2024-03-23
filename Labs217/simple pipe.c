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
      
      int a, b;
      
      printf("a=");
      
      scanf("%d", &a);
      
      printf("b=");
      
      scanf("%d", &b);
 
      write(p[1], &a, sizeof(int));
      
      write(p[1], &b, sizeof(int));      
   
      close(p[1]);
   
      return 0;
   }

   if ( ! fork() )
   {
      close(p[1]);
   
      int x, y, s;
   
      read(p[0], &x, sizeof(int));
      
      read(p[0], &y, sizeof(int));
      
      s = x + y;
      
      printf("%d + %d = %d\n",x, y, s);
    
      close(p[0]);
    
      return 0;
   } 
   
   close(p[0]);
   close(p[1]);
   
   wait(0);
   
   wait(0);

   return 0;
}