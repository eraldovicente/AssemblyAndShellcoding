section .data
a: db "ab"

section .text
global _start
_start:

	mov ax, [a]		; moving ab into ax register


	; exit syscall
	mov 	rax, 60		; syscall number for exit
	mov 	rdi, 0		; return status value of exit
	syscall
