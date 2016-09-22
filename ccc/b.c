/*************************************************************************
    > File Name: b.c
    > Created Time: 2016年08月24日 星期三 15时11分08秒
 ************************************************************************/
#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int find(int *st, int *end, int key);

int find(int *st, int *end, int key)
{
    if(end == st)
        return *end;

    int mid = *end;
    int start = 0;
    for(int i = 0;i <= end-st;i++)
    {
        if(st[i] > mid)
        {
            int t = st[i];
            st[i] = st[start];
            st[start++] = t;
        }
    }
    int t = st[start];
    st[start] = mid;
    *end = t;
    if(key-1 < start)
    {
        return find(st, st+start-1, key);
    }
    else return find(st+start, end, key-start);
}

int main(){
    int num[10000];
    srand(time(NULL));
    for(int i = 0;i < 10000;i++)
    {
        num[i] = rand();
    }
    putchar('\n');
    int key = 9999;
    /*scanf("%ld", &key);*/
    printf("this %d max : %d", key, find(num, num+9999, key));
    return 0;
}


