#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <string.h>
#define MAX_SIZE 100
int main() {
  uint16_t c,i,j,n,m;
  struct sockaddr_in server;
  uint16_t arr1[MAX_SIZE],arr2[MAX_SIZE];
	//merge si cu int uri doar ca nu mai facem cu htons care e short ...ci cu htonl
  c = socket(AF_INET, SOCK_STREAM, 0);
  if (c < 0) {
    printf("Eroare la crearea socketului client\n");
    return 1;
  }

  memset(&server, 0, sizeof(server));
  server.sin_port = htons(53293);
  server.sin_family = AF_INET;
  server.sin_addr.s_addr = inet_addr("127.0.0.1");

  if (connect(c, (struct sockaddr *) &server, sizeof(server)) < 0) {
    printf("Eroare la conectarea la server\n");
    return 1;
  }

  printf("m = ");
  scanf("%hu", &m);
  
  
  m=htons(m);
  send(c, &m, sizeof(m), 0);
  m=ntohs(m);
    for (i = 0; i < m; i++) {
        scanf("%hu", &arr1[i]);
    }
	
	
	printf("n = ");
 	 scanf("%hu", &n);
 
n=htons(n);
send(c,&n,sizeof(n),0);
n=ntohs(n);
	for (j = 0; j < n; j++) {

        	scanf("%hu", &arr2[j]);
    }

printf("arr1 start");
printf("%hu m= ",m);
   for (i = 0; i < m; i++) {
        send(c, &arr1[i], sizeof(arr1[i]), 0);
    }
printf("arr2 start");
printf("%hu n= ",n);

    for (i = 0; i < n ; i++) {
        send(c, &arr2[i], sizeof(arr2[i]), 0);
    }
	
	uint16_t k, common_numbers[MAX_SIZE];
    recv(c, &k, sizeof(k), 0);

	
	printf("Common numbers: ");
    for (i = 0; i < k; i++) {
        recv(c, &common_numbers[i], sizeof(common_numbers[i]), 0);
        printf("%hu ", common_numbers[i]);
    }
  

  close(c);
}
