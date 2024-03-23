#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

//Scrieti un program C care citeste o matrice de intregi dintr-un fisier.Programul creeaza un numar de thread-uri
//egal cu numarul de randuri in matrice, iar fiecare thread calculeaza suma numerelor de pe un rand.
//Procesul principal asteapta ca thread-urile sa isi incheie executia si apoi afiseaza sumele.

int n,m,matrice[100][100];



void* suma(void* arg){
int index=(*(int*)arg);
int* sumar=malloc(sizeof(int));
int sumax=0;

for(int j=0;j<m;j++)
	sumax=sumax+matrice[index][j];
printf("Suma: %d\n",sumax);

	*sumar=sumax;
free(arg);
	return 	(void*) sumar;

}



int main(int argc,char* argv[]){
FILE* file=fopen("thread.txt","r");
int* rezultat;
fscanf(file,"%d",&n);
fscanf(file,"%d",&m);

for(int i=0;i<n;i++){
	for(int j=0;j<m;j++)
		fscanf(file,"%d",&matrice[i][j]);

}
pthread_t th[n];
int i;
for( i=0;i<n;i++){

	int *a=malloc(sizeof(int));
	*a=i;
	pthread_create(&th[i],NULL,&suma,a);

	//free(a);
}

for(int i=0;i<n;i++){

        pthread_join(th[i],(void**)&rezultat);

//        printf("Suma liniei %d este : %d \n ",i,*rezultat);
//	free(rezultat);
}


	return 0;
}
