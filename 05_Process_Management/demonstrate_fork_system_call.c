/*
Question: Write a C program to demonstrate process creation
using the fork() system call.
*/

#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
    printf("Hello\n");
    fflush(stdout);

    pid_t child_pid = fork();

    if (child_pid < 0)
    {
        perror("fork failed");
        return 1;
    }

    return 0;
}
