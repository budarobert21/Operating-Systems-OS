#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

//Scrieti un program care primeste la linia de comanda siruri de caractere. Pentru fiecare sir de caractere
//programul creeaza un thread care calculeaza numarul de cifre, litere si caractere speciale
// (orice nu e litera sau cifra). Programul principal asteapta ca thread-urile sa isi incheie executia si afiseaza
// rezultatele totale (numarul total de cifre, litere si caractere speciale din toate argumentele primite
// la linia de comanda) si apoi se incheie. Folositi sincronizare eficienta. Nu folositi variabile globale.
typedef struct {
        int* litere;
        int* cifre;
        int* speciale;
        char* str;
}car;

void* fct(void* arg){

car a=(*(car*)arg);

int nr_litere=0,nr_cifre=0,nr_speciale=0;
for(int i=0;i<strlen(a.str);i++)
{
	if(a.str[i]>='a'&&a.str[i]<='z'||a.str[i]>='A'&&a.str[i]<='Z')
	*(a.litere)+=1;
	else if(a.str[i]>='0'&&a.str[i]<='9')
	*(a.cifre)+=1;
	else
		*(a.speciale)+=1;



}

//printf("Total letters: %d\nTotal digits: %d\nTotal special characters: %d\n", *(a.litere), *(a.cifre), *(a.speciale));
return NULL;

}


int main(int argc,char* argv[])
{
	pthread_t th[argc];

	int* litere=malloc(sizeof(int));
int* cifre=malloc(sizeof(int));
int* speciale=malloc(sizeof(int));
	car *args=malloc(sizeof(car)*argc);
	for(int i=1;i<argc;i++){

	args[i].litere=litere;
	args[i].cifre=cifre;
	args[i].speciale=speciale;
	args[i].str=argv[i];

}
	for(int i=1;i<argc;i++){
	
	pthread_create(&th[i],NULL,&fct,&args[i]);
	
}	
	

for(int i=1;i<argc;i++){
                if(pthread_join(th[i],NULL)!=0)
                        return 2;
      
        printf("Total letters: %d\nTotal digits: %d\nTotal special characters: %d\n", *args[i].litere, *args[i].cifre, *args[i].speciale);  

}
        free(args);
        free(litere);
        free(cifre);
        free(speciale);
        return 0;
}
