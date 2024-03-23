#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int main(){


for(int i=0;i<12;i++)
if(fork()==0)
	{printf("%d ", i);
		exit(0);
		}

return 0;

}
