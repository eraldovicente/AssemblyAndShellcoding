section .data
	a:	db	3
	b:	db	5

section	.text
global _start
_start:
	mov	al, [a] ; moved a value into al reg
	mov 	ah, [b] ; moved b value into ah reg

	; exit
	mov	rax, 60 ; syscall number for exit
	mov	rdi, 0  ; return value for exit
	syscall
