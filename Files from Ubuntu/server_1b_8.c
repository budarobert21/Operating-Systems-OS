#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <string.h>
#define MAX_SIZE 100
void deservire_client(int c) {
  // deservirea clientului
  uint16_t client_numbers1[MAX_SIZE];
  uint16_t client_numbers2[MAX_SIZE];
  uint16_t common_numbers[MAX_SIZE];
  uint16_t num1, num2,i,j,k;
  recv(c, &num1, sizeof(num1), MSG_WAITALL);
        num1=ntohs(num1);
    printf("1\n");
    recv(c, &num2, sizeof(num2), MSG_WAITALL);
        num2=ntohs(num2);
        printf("2\n");
   // num1 = ntohs(num1);
   // num2 = ntohs(num2);
    printf("num1= \n");
    printf("num2= \n");
          for (i = 0; i < num1; i++) {
        recv(c, &client_numbers1[i], sizeof(client_numbers1[i]), 0);
    }
         for (i = 0; i < num2; i++) {
        recv(c, &client_numbers2[i], sizeof(client_numbers2[i]), 0);
    }
         for (i = 0; i < num2; i++) {
        for (j = 0; j < num1; j++) {
            if (client_numbers1[j] == client_numbers2[i]) {
                common_numbers[k++] = client_numbers1[j];
                client_numbers1[j]=-1;
                break;
            }
        }
    }

        send(c, &k, sizeof(k), 0);
         for (i = 0; i < k; i++) {
        send(c, &common_numbers[i], sizeof(common_numbers[i]), 0);
    }

    close(c);
    // sfarsitul deservirii clientului;
  }


 
int main() {
  int s;
  struct sockaddr_in server, client;
  int c, l;
  
  s = socket(AF_INET, SOCK_STREAM, 0);
  if (s < 0) {
    printf("Eroare la crearea socketului server\n");
    return 1;
  }
  
  memset(&server, 0, sizeof(server));
  server.sin_port = htons(53293);
  server.sin_family = AF_INET;
  server.sin_addr.s_addr = INADDR_ANY;
  
  if (bind(s, (struct sockaddr *) &server, sizeof(server)) < 0) {
    printf("Eroare la bind\n");
    return 1;
  }
 
  listen(s, 5);
  
  l = sizeof(client);
  memset(&client, 0, sizeof(client));
  
  while (1) {
    c = accept(s, (struct sockaddr *) &client, &l);
    printf("S-a conectat un client.\n");
    if (fork() == 0) { // fiu
      deservire_client(c);
      return 0;
    }
    // se executa doar in parinte pentru ca fiul se termina mai sus din cauza exit-ului    
  }
}
