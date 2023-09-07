#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
int main()
{
        int n;
        pid_t p;
        char *msg;
        p = fork();
        if(p<0)
        {
                printf("Error");
        }
        else if(p==0)
        {
                n=5;
                msg="This is child process";
                printf("Child process id :%d\n",getpid());
                printf("Parent process id is%d\n",getppid());
        }
        else
        {
                n=3;
                msg="this is parent process";
                printf("Parent process is %d\n",getpid());
                printf("grandfather process is %d\n",getppid());
                printf("child process id is %d\n",p);
        }
        for(;n>0;n--)
        {
                puts(msg);
                sleep(1);
        }
}
