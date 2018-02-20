#include <stdio.h>
extern long fib(long i);

int main(int argc, char **argv) { 
   printf("fib(0) = %ld\n", fib(0));
   printf("fib(1) = %ld\n", fib(1));
   printf("fib(2) = %ld\n", fib(2));
   long num = 0;
   long index = 3;
   while (num < 0x3FFFFFFFFFFFFFFF) {
      num = fib(index);
      printf("fib(%ld) = %ld\n", index, num);
      index++;
   }
   return 0;
}
