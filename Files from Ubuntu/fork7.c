#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(){

fork();
wait(NULL);
fork();
wait(NULL);
fork();
printf("a ");

return 0;
}
