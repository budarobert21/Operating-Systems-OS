#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>


int main(int argc,char* argv[])
{
	int fd[2];
	if(pipe(fd)==-1){
	perror("pipe()");
	exit(EXIT_FAILURE);
	
	
	
	}

	int id=fork();
	if(id==-1){
	
	perror("pipe()");
	exit(EXIT_FAILURE);
	
	
	}

	if(id==0){
	
	close(fd[1]);

	int numar;
	read(fd[0],&numar,sizeof(int));

	if(numar%2==0)
		printf("Numarul %d este par \n",numar);
	else
		printf("Numarul %d este impar \n",numar);
	
	
	
	
	close(fd[1]);
	}
	else{
	close(fd[0]);
	int citit;
	scanf("%d",&citit);
	printf("Numarul citit este %d\n",citit);
	write(fd[1],&citit,sizeof(int));
	
	close(fd[1]);
	
	
	
	
	
	}



return 0;




}
