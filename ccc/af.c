/*************************************************************************
    > File Name: af.c
    > Created Time: 2016年09月14日 星期三 08时28分56秒
 ************************************************************************/
#include <stdio.h>
int func(int num);
int main(){
    int num;
    puts("puts a num\n");
    scanf("%d", &num);
    printf("\n%d\n", func(num));
    return 0;
}
int func(int num)
{
    int sum = 0;
    do
    {
        sum += num%10;
        num /= 10;
    }while(num);
    return sum;
}
