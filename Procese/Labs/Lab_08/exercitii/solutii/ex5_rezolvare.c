#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
//:wqude <fstream>
#include <sys/wait.h>



int main(int argc,char* argv[])
{	FILE* file;	

	file=fopen("fisier_proces","r");
	if(file==NULL)
	{
		perror("fopen()");
		exit(1);
	
	}	


	int pd[2];
	int fs[2];
	int zes=pipe(fs);
	int res = pipe(pd);
	if(res ==-1)
	{
		perror("pipe()");
		exit(1);

	}
	int pid=fork();
	if(pid==-1)
	{
		perror("fork()");
		exit(1);


	}
	if(pid==0)
	{
		close(pd[1]);
		close(fs[0]);
		int nr1,nr2;
		while(read(pd[0],&nr1,sizeof(int))>0){
			//close(pd[1]);
			//close(fs[0]);
			//int nr1,nr2;

			//read(pd[0],&nr1,sizeof(int));
			read(pd[0],&nr2,sizeof(int));

			int sum=nr1+nr2;
			write(fs[1],&sum,sizeof(int));

			

			//close(pd[0]);
			//close(fs[1]);
		}


		close(pd[0]);
		close(fs[1]);	
	//xit(sum);

	}
	else{
		int sum;
		int nr1,nr2;
		nr1=-1;
		nr2=-1;
		close(pd[0]);
		close(fs[1]);
		while(!feof(file)){
			//int nr1,nr2;  sau in while verific daca fscanf(file,"%d %d",&nr1,&nr2)==2;
			nr1=-1;
			nr2=-1;
			if(fscanf(file,"%d",&nr1)==EOF){break;}
			if(fscanf(file,"%d",&nr2)==EOF){break;}

			printf("Cele doua numere: %d , %d\n",nr1,nr2);

			if(write(pd[1],&nr1,sizeof(int))==-1){break;}
			if(write(pd[1],&nr2,sizeof(int))==-1){break;}
			
			printf("Totul bine?:  \n");
			if(read(fs[0],&sum,sizeof(int))==-1){break;}
					

			
		printf("Suma este : %d\n",sum);		
//		wait(NULL);
		}
		close(pd[1]);
		close(fs[0]);
		

	wait(NULL);

	}

	//wait(NULL);
	//printf("Suma este : %d\n",sum);













fclose(file);
return 0;
}
