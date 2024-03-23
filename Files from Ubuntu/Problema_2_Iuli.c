#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
typedef struct{
        char str[100];
}argument;

//Scrieti un program C care converteste toate literele mici din argumentele primite la linia de comanda
// in litere mari si afiseaza rezultatul. Folositi un thread pentru fiecare argument.


void* convert(void* arg){
argument a=(*(argument*)arg);
for(int i=0;i<strlen(a.str);i++)
	a.str[i]=toupper(a.str[i]);
printf("%s",a.str);
return NULL;
}

int main(int argc,char* argv[]){

pthread_t th[argc];

for(int i=1;i<argc;i++){

	pthread_create(&th[i],NULL,&convert,argv[i]);


}

for(int i=1;i<argc;i++)
	pthread_join(th[i],NULL);


return 0;
}
