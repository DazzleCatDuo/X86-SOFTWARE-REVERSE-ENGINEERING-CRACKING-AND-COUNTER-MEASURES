; shark sim 3000

USE32
section .data
s: times 20 db 7eh 
   db 5eh, 7eh, 0dh 
.L equ $-s 
 
section .text
global _start
_start:
    mov esi, s.L-1
.p:
    mov ebx, 1
    mov ecx, s+s.L
    sub ecx, esi 
    mov edx, esi 
    mov eax, 4
    int 80

    mov ecx, [0xfffffff]
    loop $

    dec esi 
    jnz .p

    mov ebx, 0
    mov eax, 1
    int 80
