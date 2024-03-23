#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
       #include <sys/stat.h>
       #include <fcntl.h>

int n;
int numere[100001];
int frecventa[100]={0};

pthread_mutex_t mutex;

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
        {			pthread_mutex_lock(&mutex);

		if(prim(numere[i])==1)
		{
			frecventa[numere[i]]++;



		}
			 pthread_mutex_unlock(&mutex);


}
	//printf("Thread_ul :%d\n",index);
	return NULL;
}

int main(int argc,char* argv[]){
	pthread_t th[50];
	pthread_mutex_init(&mutex,NULL);
 FILE* file=fopen("thread3.txt","r");
	scanf("%d",&n);

	for(int i=0;i<n;i++){
	unsigned char byte;
	int integer;
	fread(&byte,sizeof(byte),1,file);
	integer=byte;
	numere[i]=integer;

}
//	FILE* file=fopen("thread3.txt","r");
	for(int i=0;i<50;i++){
	int* a=malloc(sizeof(int));
	*a=i;
	pthread_create(&th[i],NULL,&fct,a);

}
	printf("Asteptam aici?\n");	
	for(int i =0 ;i<50;i++){
	pthread_join(th[i],NULL);


	

}
fclose(file);

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
	if(frecventa[i]!=0)
	printf("NUmarul %d are frecv: %d\n",i,frecventa[i]);

return 0;

	


}
