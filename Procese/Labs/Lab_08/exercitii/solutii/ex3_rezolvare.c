#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>



int main(int argc,char* argv[]){
	int fs[2];
	int res=pipe(fs);
	if(res==-1)
	{
		perror("pipe()");
		exit(EXIT_FAILURE);

	
	}
	int pid=fork();
	if(pid==-1){
	perror("fork()");
	exit(EXIT_FAILURE);
	
	
	}

	if(pid==0){
		close(fs[1]);
		char car="\0";
		read(fs[0],&car,sizeof(char));
		printf("Caracterul citit este: %c\n",car);

		char sir[50]="\0";
		read(fs[0],&sir,sizeof(sir));
		printf("Sirul citit este: %s\n",sir );
		int cnt=0;
		for(int i=0;i<strlen(sir);i++)
		{
			if(sir[i]==car)
				cnt++;
		
		}
		printf("Numarul aparitiilor este: %d",cnt);

		close(fs[0]);
	}
	else{
		
		close(fs[0]);
		char caracter;
		printf("Citim caracterul de la tastatura: \n");
		scanf("%c",&caracter);
		
		write(fs[1],&caracter,sizeof(char));
		//getchar();
		sleep(1);
		char sir[50];
		printf("Citim sirul de la tastatura: \n");
		scanf("%s",sir);
		
		write(fs[1],&sir,sizeof(sir));

		close(fs[1]);	


	}









return 0;
}
