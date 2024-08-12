section .data
my_number: 	db	100

section .bss
var1:	resb	1

section	.text
global	_start
_start:

	; move my_number value into rax reg
	mov	rax, [my_number]

	; move rax value into var1
	mov 	[var1], rax

	; exit syscall
	mov 	rax, 60 	; syscall number for exit
	mov	rdi, 0		; return status
	syscall
