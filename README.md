## ABOUT

This project aims to convert the `C` functions from my [Libft](https://github.com/jotavare/libft) library to `x86 Assembly`. The goal is to understand `Assembly` better and assess the efficiency of these functions compared to their `C` counterparts.

To access the repository and the documentation where I learned to code in `x86 Assembly` with NASM, click [here](https://github.com/jotavare/x86-assembly-nasm).

## BUILD

The `.asm` files use the 32-bit cdecl calling convention (arguments read off
the stack via `[ebp + 8]`), so both the assembly and the C test files must be
assembled/compiled and linked as 32-bit, e.g.:

```sh
nasm -f elf32 source/ft_isalnum.asm -o ft_isalnum.o
gcc -m32 -c source/assembly_test.c -o assembly_test.o
gcc -m32 ft_isalnum.o ft_isprint.o ... assembly_test.o -o assembly_test
```

## CONTRIBUTING

This repository is finished and not open to changes.
