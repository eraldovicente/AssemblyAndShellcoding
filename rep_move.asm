section .data
var1:	db	"Test String"

section .bss
var2:	resb	15

section	.text
global _start
_start:
	
	cld
	
	mov	rcx, 11
	lea	rsi, [var1]
	lea	rdi, [var2]
	rep	movsb

	; exit
	mov	rax, 60		; syscall number for exit
	mov	rdi, 0		; return status value for exit syscall
	syscall

