section .data
a: db "ab"

section .text
global _start
_start:

	mov	al, [a]		; moving first byte a into al
	mov 	ah, [a+1]	; moving second byte b into ah

	; exit syscall
	mov 	rax, 60		; syscall number for exit
	mov 	rdi, 0		; return status value of exit
	syscall
