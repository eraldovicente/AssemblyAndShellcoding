section .text
global _start
_start:

	mov	al, 12		; moving 12 in al reg
	mov	bl, 10		; moving 10 in bl reg
	and	al, bl		; result will be in al

	; exit system
	mov 	rax, 60		; system call number for exit
	mov 	rdi, 0		; return value of exit
	syscall
