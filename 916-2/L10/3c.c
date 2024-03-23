#include <sys/types.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
int main(int argc, char *argv[]) {
    int b2c = open("./b2c", O_RDONLY);
    if(-1 == b2c) {
        perror("Error opening fifo from B to C");
        exit(1);
    }
    int c2a = open("./c2a", O_WRONLY);
    if(-1 == c2a) {
        perror("Error opening fifo from C to A");
        exit(1);
    }
    int nr;
    while(1) {
        if(0 > read(b2c, &nr, sizeof(int))) {
            perror("Error reading number from B");
            exit(1);
        }
        printf("C -> receive -> %d\n", nr);
        if(nr >= 10) {
            nr /= 3;
        }
        printf("C -> send -> %d\n", nr);
        if(0 > write(c2a, &nr, sizeof(int))) {
            perror("Error writing number from C to A");
            exit(1);
        }
        if(nr < 10) {
            break;
        }
    }

    close(b2c);
    close(c2a);

    return 0;
}
