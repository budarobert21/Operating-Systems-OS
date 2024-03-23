#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <string.h> 
 
int main() {
  int c;
  struct sockaddr_in server,address;
  
  c = socket(AF_INET, SOCK_STREAM, 0);
  if (c < 0) {
    printf("Eroare la crearea socketului client\n");
    return 1;
  }
  
  memset(&server, 0, sizeof(server));
  server.sin_port = htons(8889);
  server.sin_family = AF_INET;
  server.sin_addr.s_addr = inet_addr("172.30.5.25");
  
  if (connect(c, (struct sockaddr *) &server, sizeof(server)) < 0) {
    printf("Eroare la conectarea la server\n");
    return 1;
  }

  uint16_t id = 53293;
  uint16_t strLen;
  char str[1000];
  id = htons(id);
  send(c, &id, sizeof(id), 0);
  recv(c, &strLen, sizeof(char) * (sizeof(strLen) + 10), 0);
  strLen = ntohs(strLen);
  recv(c, str, strLen, 0);

  for (int i = 0; i < strLen + 30; i ++) {
    printf("%c", str[i]);
  }
int aaa;
	  uint16_t myPort;
	  bzero(&address,sizeof(address));
	  socklen_t len=sizeof(address);
	  getsockname(c,(struct sockaddr_in *) &address,&len);
	  myPort=ntohs(address.sin_port);
	printf("myPort: %u",myPort);
//	scanf("%d",&aaa);
	myPort=htons(myPort);
	 send(c,&myPort, sizeof(uint16_t), 0);
  
  
  close(c);
  }
