#include <pthread.h>
#include <stdlib.h>
//#include <unitstd.h>
#include <stdio.h>
#include <sys/types.h>
       #include <sys/stat.h>
       #include <fcntl.h>

int n;
int numere[100001];
int frecventa[100]={0};

pthread_mutex_t mtx;

int prim(int x)
{
        if(x>100)
                return 0;
        if(x<2 || (x>2 && x%2==0))
                return 0;
        if(x==2)
                return 1;
        for(int i=3;i<x;i++)
                if(x%i==0)
                        return 0;
        return 1;
}

void* fct(void* arg)
{
        int index = (*(int*)arg);
        for(int i=index*(n/50);i<index*(n/50)+(n/50);i++)
        {
                if(prim(numere[i])==1)
                {
                        pthread_mutex_lock(&mtx);
                        frecventa[numere[i]]++;
                        pthread_mutex_unlock(&mtx);
                }
        }
        return NULL;
}

int main(int argc,char* argv[])
{
        scanf("%d",&n);
        FILE* f=fopen("thread3.txt","r");
        for(int i=0;i<n;i++)
                {
                        unsigned char byte;
                        int integer;

                        fread(&byte, sizeof(byte), 1, f);


                        integer = byte; // Cast the byte to an integer

                        numere[i]=integer;
                }
        fclose(f);
        pthread_t th[50];
        pthread_mutex_init(&mtx,NULL);
        for(int i=0;i<50;i++)
        {
                int* a =malloc(sizeof(int));
                *a=i;
                pthread_create(&th[i],NULL,fct,a);
        }
        for(int i=0;i<50;i++)
                pthread_join(th[i],NULL);
        int suma=0;
        int numar=0;
        for(int i=0;i<100;i++)
        {
                suma+=frecventa[i]; //suma aparitiilor numerelor prime
                if(frecventa[i]!=0) //cate numere prime apar cel putin odata
                        numar++;
        }
        if(numar!=0)
        {
                int media_aritmetica = suma/numar;
                printf("MEDIA ARITMETICA: %d \n",media_aritmetica);
        }
        for(int i=0;i<100;i++)
        {       if(frecventa[i]!=0)
                        printf("APARITIILE LUI %d SUNT %d\n",i,frecventa[i]);
        }
        pthread_mutex_destroy(&mtx);
        return 0;
}
