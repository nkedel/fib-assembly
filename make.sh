#!/bin/bash
nasm -f elf64 -F dwarf -g fib.asm -o fib-nasm.o
gcc fib-driver.c fib-nasm.o -g
