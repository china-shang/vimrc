/*************************************************************************
    > File Name: ab.c
    > Created Time: 2016年09月14日 星期三 08时42分03秒
 ************************************************************************/
#include <stdio.h>

int func(int n);
int main(void)
{
    printf("%d\n", func(4));
    return 0;
}				
int func(int n)
{
    if(n <= 2)
    return 0;
    int num = 1;
    for(int i = 1;i <= n-2;i++)
    {
        num += i-1;
    }
    return num;
}
