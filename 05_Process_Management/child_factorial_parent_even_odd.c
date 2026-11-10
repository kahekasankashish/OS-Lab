/*
Question: Write a C program to create a child process using fork().
Calculate the factorial of the entered number in the child process
and check whether the number is even or odd in the parent process.
*/

#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main()
{
    int n;
    printf("enter n\n");

    if (scanf("%d", &n) != 1 || n < 0 || n > 20)
    {
        printf("Please enter a non-negative integer up to 20.\n");
        return 1;
    }

    printf("creating child process\n");
    pid_t child_pid = fork();

    if (child_pid < 0)
    {
        perror("fork failed");
        return 1;
    }
    else if (child_pid == 0)
    {
        unsigned long long f = 1;
        int i;

        for (i = 1; i <= n; i++)
        {
            f = f * i;
        }

        printf("Factorial is:%llu\n", f);
        printf("Child process id is:%d\n", getpid());
    }
    else
    {
        if (n % 2 == 0)
        {
            printf("It is even\n");
        }
        else
        {
            printf("It is odd\n");
        }

        printf("Parent process id is:%d\n", getpid());
        wait(NULL);
    }

    return 0;
}
