section .text
global _start

_start:

	mov	rax, 4		; moving 4 into rax
	mov 	rbx, rax	; moving rax value into rbx reg

	; exit syscall
	mov	rax, 60 	; exit syscall number
	mov	rdi, 0		; return status value for exit
	syscall

