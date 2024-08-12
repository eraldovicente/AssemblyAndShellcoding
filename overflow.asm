section .data
a:	db	5
b: 	db	7

section .text
global _start
_start:
	
	mov	al, [a]		; moving value of a into al reg
	mov	bl, [b]		; moving value of b into bl reg
	add	al, bl		; result of add stored in al reg

	; exit system
	mov 	rax, 60		; system call number for ecit
	mov	rdi, 0		; exit call return value
	syscall 
