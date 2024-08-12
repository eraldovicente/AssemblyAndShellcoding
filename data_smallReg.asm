section .data
a: db 3, 5, 7

section .text
global _start
_start:
	mov	al, [a+1] ; moving 5 into al reg
	
	; exit syscall
	mov	rax, 60	  ; syscall number for exit
	mov 	rdi, 0	  ; return status for exit
	syscall
