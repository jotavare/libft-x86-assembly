#include <time.h>
#include <stdio.h>
#include <ctype.h>
#include "libft_asm.h"

#define NUM_TESTS 1

double measure_time(int (*function)(int))
{
    clock_t start, end;
    double cpu_time_used;

    start = clock();
    test_speed(function);
    end = clock();

    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    return cpu_time_used;
}

void test_speed(int (*function)(int))
{
    int c;
    for (int i = 0; i < NUM_TESTS; i++)
    {
        for (c = -256; c <= 256; c++)
        {
            function(c);
        }
    }
}

int main(void)
{
    double asm_time, c_time;

    asm_time = measure_time(ft_isalnum);
    c_time = measure_time(isalnum);
    printf("ft_isalnum: Assembly time = %f seconds, C time = %f seconds\n", asm_time, c_time);

    return 0;
}
