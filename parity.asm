section .text
global _start

_start:

	mov	al, 12		; moving 12 into al reg
	mov	bl, 3		; moving 2 into bl reg
	add	al, bl		; adding al and bl

	; exit system call
	mov	rax, 60		; system call number for exit
	mov	rdi, 0		; return value
	syscall
