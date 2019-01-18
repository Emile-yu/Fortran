#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>

int main(int argc,char *argv[]){

	int nb=0;
	int i,status;
	pid_t pid,fils,init;
	init=getpid();
	printf("init=%d\n",init);
	for(i=0;i<5;i++){
		if((pid=fork())==0){
			printf("pere = %d,je suis : %d\n",getppid(),getpid());
			nb++;
			if(nb==4){
				return 2;
			}
		}
		else{
			fils=wait(&status);
			printf("fils=%d,status=%d\n",fils,status);
			if(getpid()==init){
				printf("fini, status=%d\n",WEXITSTATUS(status));
				exit(status);
			}else{
				return WEXITSTATUS(status);
			}
		}
	}
	
	return 0;

}
