section .text
global _start
_start:

	mov 	al, 128		; moving 128 into al reg
	mov	bl, 128		; moving 128 into bl reg
	add	al, bl		; adding al and bl resulting carry

	; exit system call
	mov	rax, 60		; system call number
	mov	rdi, 0		; system call return value
	syscall

