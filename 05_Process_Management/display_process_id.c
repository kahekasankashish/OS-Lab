/*
Question: Write a C program to display the process ID
using the getpid() system call.
*/

#include <stdio.h>
#include <unistd.h>

int main()
{
    int pid = getpid();
    printf("Process id is: %d\n", pid);
    return 0;
}
