/*************************************************************************
    > File Name: aa.c
    > Created Time: 2016年09月14日 星期三 08时32分59秒
 ************************************************************************/
#include <stdio.h> 
#include <string.h>
#include <stdbool.h>
int func(char *s);
int main(int argc, char *argv[])
{
    char str[100]; 
    puts("puts a string\n");
    scanf("%s", str);
    if(func(str))
    {
        puts("true\n");
    }
    else
    {
        puts("false\n");
    }
    return 0;
}				
int func(char *s)
{
    bool is = true;
    for(int i = 0,  j = strlen(s)-1;i <= j;i++, j--)
    {
        if(s[i] != s[j])
        {
            is = false;
            break;
        }
    }
    return is;
}
