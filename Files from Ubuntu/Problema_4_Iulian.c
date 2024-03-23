#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

//Scrieti un program C care primeste ca argumente la linia de comanda numere intregi. Programul va calcula un vector
// de frecventa pentru cifrele zecimale. Pentru fiecare argument, programul va crea un thread care numara aparitiile
// fiecarei cifre si adauga numarul la pozitia corespunzatoare din vectorul de frecventa.

int vector[10];
pthread_mutex_t mutex;



void* fct(void* arg){

char* string=((char*)arg);
pthread_mutex_lock(&mutex);
for(int i=0;i<10;i++){

	vector[i]=0;

}

for(int i=0;i<strlen(string);i++){
int cifra=(string[i])-'0';
vector[cifra]++;
printf("%c \n",string[i]);
printf("Cifra : %d\n",cifra);

}
pthread_mutex_unlock(&mutex);




for(int i=0;i<10;i++)
	printf("Frecventele cifrelor: %d, frv: %d\n",i,vector[i]);
return NULL;


}
int main(int argc,char* argv[])
{
pthread_mutex_init(&mutex,NULL);
pthread_t th[argc-1];

for(int i=1;i<argc;i++){

	pthread_create(&th[i],NULL,&fct,argv[i]);

}
for(int i=1;i<argc;i++){

        pthread_join(th[i],NULL);

}


return 0;
}
