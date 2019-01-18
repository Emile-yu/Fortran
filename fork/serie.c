#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>
int main(int argc,char* argv[]){
	int i;
	int n=0;
	pid_t init,fils;
	init = getpid();
	printf("init=%d\n",init);
	for(i=0;i<5;i++){
		if((fils=fork())>0){
			n++;
			printf("pere = %d,je suis : %d\n",getpid(),fils);
		}else if(fils==0) exit(0);
	}
	wait(NULL);

	return 0;
}
