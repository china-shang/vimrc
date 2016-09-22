/*************************************************************************
    > File Name: ac.c
    > Created Time: 2016年09月14日 星期三 09时01分25秒
 ************************************************************************/
#include <stdio.h>

int find(int num[], int n, int key);
int find1(int *num, int n,int m,  int key);
int main(void)
{
    int num[] = {0, 1, 2, 3, 4, 5, 6, 7, 8};
    printf("%d\n", find(num, 9, 4));
    return 0;
}				
int find1(int *num, int n, int m, int key)
{
    if(n == m)
        return -1;
    int mid = (n+m)/2;
    if(num[mid] == key)
        return mid;
    if(num[mid] > key)
        return find1(num, n, mid, key);
    else 
        return find1(num, mid+1, m, key);
}

int find(int num[], int n, int key)
{
    return find1(num, 0, n-1, key);
}
