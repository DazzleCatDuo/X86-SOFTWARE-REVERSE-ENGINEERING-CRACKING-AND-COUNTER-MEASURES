global _start
 
section .text
_start:
	mov eax, 4 ; write
	mov ebx, 1 ; stdout
	mov ecx, msg
	mov edx, msg.len
	int 0x80

	mov eax, 1 ; exit
	mov ebx, 0
	int 0x80

section .data
msg:    db  "Hello, world!", 10
.len:   equ $ - msg
