#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>



pthread_mutex_t mutex;
pthread_cond_t cond;

int patrat_perfect=1;
int numar;

void* generare(){
	int i=1;
	while(patrat_perfect<numar){
	printf("Blocam thread_ul\n");
	pthread_mutex_lock(&mutex);
	printf("Am blocat\n");
	patrat_perfect=i*i;
	i++;
	printf("Semnalam thread ului celalalt \n");
	pthread_cond_signal(&cond);
	printf("Dupa Semnal\n");
	pthread_mutex_unlock(&mutex);
}
return NULL;

}

void *verificare()
{
	pthread_mutex_lock(&mutex);	
	while(patrat_perfect<numar){
	printf("Am primit semnalul\n");
	pthread_cond_wait(&cond,&mutex);
	}
	pthread_mutex_unlock(&mutex);
	printf("Numarul cautat este : %d\n",patrat_perfect);


return NULL;

}
int main(int argc,char* argv[]){
pthread_t th[2];
pthread_mutex_init(&mutex,NULL);
pthread_cond_init(&cond,NULL);

numar=atoi(argv[1]);

	pthread_create(&th[0],NULL,generare,NULL);//probabil pentru ca avem doar doua thread uri

	pthread_create(&th[1],NULL,verificare,NULL);


	for(int i=0;i<2;i++)
	pthread_join(th[i],NULL);





return 0;


}
