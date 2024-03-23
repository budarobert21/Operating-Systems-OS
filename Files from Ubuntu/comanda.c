#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>



int main(){

 execlp("sh", "sh", "-c", "cat a.txt > b.txt", NULL);

return 0;
}
