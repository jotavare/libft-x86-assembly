#include <stdio.h>
#include "libft_asm.h"

void test_ft_isalnum(void)
{
    int c;
    int asm_result, c_result;

    for (c = -256; c <= 256; c++)
    {
        asm_result = ft_isalnum(c);
        c_result = isalnum(c);

        if (asm_result != c_result)
        {
            printf("ft_isalnum test failed for character %c (%d)\n", c, c);
            printf("Assembly result: %d\n", asm_result);
            printf("C result: %d\n", c_result);
            return;
        }
    }

    printf("ft_isalnum test passed!\n");
}

void test_ft_isalpha(void)
{
    int c;
    int asm_result, c_result;

    for (c = -256; c <= 256; c++)
    {
        asm_result = ft_isalpha(c);
        c_result = isalpha(c);

        if (asm_result != c_result)
        {
            printf("ft_isalpha test failed for character %c (%d)\n", c, c);
            printf("Assembly result: %d\n", asm_result);
            printf("C result: %d\n", c_result);
            return;
        }
    }

    printf("ft_isalpha test passed!\n");
}

void test_ft_isascii(void)
{
    int c;
    int asm_result, c_result;

    for (c = -256; c <= 256; c++)
    {
        asm_result = ft_isascii(c);
        c_result = isascii(c);

        if (asm_result != c_result)
        {
            printf("ft_isascii test failed for character %c (%d)\n", c, c);
            printf("Assembly result: %d\n", asm_result);
            printf("C result: %d\n", c_result);
            return;
        }
    }

    printf("ft_isascii test passed!\n");
}

void test_ft_isdigit(void)
{
    int c;
    int asm_result, c_result;

    for (c = -256; c <= 256; c++)
    {
        asm_result = ft_isdigit(c);
        c_result = isdigit(c);

        if (asm_result != c_result) {
            printf("ft_isdigit test failed for character %c (%d)\n", c, c);
            printf("Assembly result: %d\n", asm_result);
            printf("C result: %d\n", c_result);
            return;
        }
    }

    printf("ft_isdigit test passed!\n");
}

void test_ft_isprint(void)
{
    int c;
    int asm_result, c_result;

    for (c = -256; c <= 256; c++)
    {
        asm_result = ft_isprint(c);
        c_result = isprint(c);

        if (asm_result != c_result)
        {
            printf("ft_isprint test failed for character %c (%d)\n", c, c);
            printf("Assembly result: %d\n", asm_result);
            printf("C result: %d\n", c_result);
            return;
        }
    }

    printf("ft_isprint test passed!\n");
}

int main(void)
{
    test_ft_isalnum();
    test_ft_isalpha();
    test_ft_isascii();
    test_ft_isdigit();
    test_ft_isprint();

    return (0);
}
