section .text
global _start
_start:

	mov	al, 12		; moving 12 into al reg
	mov 	bl, 10		; moving 10 into bl reg
	or	al, bl		; the result wil be in al reg

	; exit system call
	mov	rax, 60		; system call number for exit
	mov	rdi, 0		; return status value for exit
	syscall
