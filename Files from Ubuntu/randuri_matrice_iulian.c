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

int n,m,matrix[100][100];

void* fct(void* arg){
        int a =(*(int*)arg);
        int sum=0;
        for(int i=0;i<m;i++)
                sum+=matrix[a][i];
        printf("Thread finished: %d\n", sum);
        int* result = malloc(sizeof(int));
        *result = sum;
        free(arg);
        return (void*) result;
}

int main(int argc,char* argv[])
{
        int* rezultat;
        FILE* fd = fopen("thread.txt", "r");
        int i;
        fscanf(fd,"%d",&n);
        fscanf(fd,"%d",&m);
        pthread_t th[n];
        for(int k=0;k<n;k++)
                for(int j=0;j<m;j++)
                        fscanf(fd,"%d",&matrix[k][j]);
        for(i=0;i<n;i++){
                int* a = malloc(sizeof(int));
                *a=i;
                if(pthread_create(&th[i],NULL,&fct,a)!=0)
                        return 1;
        }
        for(i=0;i<n;i++){
                if(pthread_join(th[i],(void**)&rezultat)!=0)
                        return 2;
                printf("SUMA LINIEI %d este %d \n",i,*rezultat);
                free(rezultat);
        }
        return 0;
}
