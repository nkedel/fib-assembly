global fib
bits 64


section .data

section .text

fib:
    mov   rcx, rdi ; rcx is the counter, going down
    mov   eax, 0 ; rax = most recent, automatically sign extended
    cmp   rcx, 0
    je    done
    mov   edx, eax ; rdx = prior, automatically sign extended
    mov   eax, 1
    cmp   rcx, 1
    je   done
    dec   rcx
_loop:
    mov   rbx, rax ; save most recent to temporary
    add   rax, rdx ; add prior to most recent
    mov   rdx, rbx ; save temporary to prior
    dec   rcx
    jnz   _loop
done:
    ret		   ; return value in rax
