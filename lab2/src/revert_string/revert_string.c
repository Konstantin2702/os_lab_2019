#include "revert_string.h"
#include "stdio.h"
#include "malloc.h"
#include "string.h"
void RevertString(char *str)
{
	char temp;
    int k = 0;
    int i;
    for ( i = 0 ;i < strlen(str) / 2; i++)
    {
        temp = str[i];
        str[i] = str[strlen(str) - 1 - i];
        str[strlen(str) - 1 - i] = temp;
    }
}

