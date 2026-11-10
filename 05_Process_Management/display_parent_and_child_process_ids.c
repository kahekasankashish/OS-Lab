/*
Question: Write a C program to create a child process using fork()
and display the process IDs of the parent and child processes.
*/

#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
    printf("Process id is : %d\n", getpid());
    printf("Creating the child process\n");
    fflush(stdout);

    pid_t child_pid = fork();

    if (child_pid < 0)
    {
        perror("Failed to create the child process");
        return 1;
    }
    else if (child_pid == 0)
    {
        printf("Child process id:%d, Parent process id:%d\n", getpid(), getppid());
    }
    else
    {
        printf("Parent process id: %d\n", getpid());
        wait(NULL);
    }

    return 0;
}
