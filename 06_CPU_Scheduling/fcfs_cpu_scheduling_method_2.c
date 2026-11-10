/*
Question: Write a C program to implement First Come First Served (FCFS)
CPU scheduling using the arrival time and burst time of processes.
Calculate completion time, turnaround time, waiting time, and their averages.
*/

#include <stdio.h>

int main()
{
    int n, j;
    printf("enter the no. of processes\n");

    if (scanf("%d", &n) != 1 || n <= 0)
    {
        printf("Invalid number of processes\n");
        return 1;
    }

    int at[n], bt[n], ct[n], tat[n], wt[n];

    for (j = 0; j < n; j++)
    {
        printf("enter at and bt of process%d\n", j + 1);
        if (scanf("%d %d", &at[j], &bt[j]) != 2 || at[j] < 0 || bt[j] < 0)
        {
            printf("Invalid arrival or burst time\n");
            return 1;
        }
    }

    ct[0] = at[0] + bt[0];
    tat[0] = ct[0] - at[0];
    wt[0] = tat[0] - bt[0];

    float avgtat = tat[0], avgwt = wt[0];

    for (j = 1; j < n; j++)
    {
        if (ct[j - 1] >= at[j])
        {
            ct[j] = ct[j - 1] + bt[j];
        }
        else
        {
            ct[j] = at[j] + bt[j];
        }

        tat[j] = ct[j] - at[j];
        wt[j] = tat[j] - bt[j];

        avgtat = avgtat + tat[j];
        avgwt = avgwt + wt[j];
    }

    avgtat = avgtat / n;
    avgwt = avgwt / n;

    printf("Result:\n");
    printf("Process-ID\tAT\tBT\tCT\tTAT\tWT\n");

    for (j = 0; j < n; j++)
    {
        printf("P%d\t\t%d\t%d\t%d\t%d\t%d\n",
               j + 1, at[j], bt[j], ct[j], tat[j], wt[j]);
    }

    printf("Average TAT=%.2f\nAverage WT=%.2f\n", avgtat, avgwt);
    return 0;
}
