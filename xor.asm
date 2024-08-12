section .text
global _start
_start:

	mov	al, 12		; moving 12 into al reg
	mov	bl, 10		; moving 10 into bl reg
	xor	al, bl		; xor between al and bl
				; the result will be in all reg

	; exit system call
	mov	rax, 60		; exit system call number
	mov	rdi, 0		; return status value
	syscall
