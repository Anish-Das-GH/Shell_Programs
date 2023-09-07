#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
int main()
{
        pid_t p;
        int n;
        p = fork();
        char *msg;
        int exit_code;
        if(p<0)
        {
                printf("Process Failed");
                exit(1);
        }
        else if(p==0)
        {
                msg="Child Process";
                n=5;
                exit_code=37;

        }
        else{
                msg="Parent Process";
                n=3;
                exit_code=0;
        }
                else{
                msg="Parent Process";
                n=3;
                exit_code=0;
        }
        for(;n>0;n--)
        {
                puts(msg);
                sleep(1);
        }
        if(p!=0)
        {
                int stat_val;
                pid_t child_p;
                child_p=wait(&stat_val);
                printf("\nChild Finished with PID:%d",child_p);
                if(WIFEXITED(stat_val))
                {
                        printf("\nChild exited with code %d\n",WEXITSTATUS(stat_val));
                }
                else
                {
                        printf("Child Terminated abnormally");
                }

        }
        exit(exit_code);
}
       
                           
