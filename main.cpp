#include <stdio.h>

int main()
{
    int a[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int summ = 0;
    for (int i = 0; i < 10; i++)
    {
        if (a[i] & 0x22)
            continue;
        else
            summ+=1;
    }
    printf("%d", summ);

    return 0;
}
