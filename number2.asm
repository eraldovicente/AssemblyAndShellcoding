section .text
global _start

_start:

	mov	al, 120		; storing 120 in 8 bit al register
	mov 	al, 254		; storing 129 in 8 bit al register

	; exit system
	mov 	rax, 60		; system call number for exit
	mov	rdi, 0		; return value for exit
	syscall

