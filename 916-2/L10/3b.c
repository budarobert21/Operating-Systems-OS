#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[]) {
    int a2b = open("./a2b", O_RDONLY);
    if(-1 == a2b) {
        perror("Error opening fifo from A to B");
        exit(1);
    }
    int b2c = open("./b2c", O_WRONLY);
    if(-1 == b2c) {
        perror("Error opening fifo from B to C");
        exit(1);
    }
    int nr;
    while(1) {
        if(0 > read(a2b, &nr, sizeof(int))) {
            perror("Error reading number from A");
            exit(1);
        }
        printf("B -> receive -> %d\n", nr);
        if(nr >= 10) {
            nr *= 2;
        }
        printf("B -> send -> %d\n", nr);
        if(0 > write(b2c, &nr, sizeof(int))) {
            perror("Error writing number from B to C");
            exit(1);
        }
        if(nr < 10) {
            break;
        }
    }

    close(a2b);
    close(b2c);

    return 0;
}
