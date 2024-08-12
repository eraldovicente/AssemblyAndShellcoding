section .text
global _start
_start:
	
	mov	rax, 12
	mov	rbx, 10
	add	rax, rbx

	; exit system call
	mov	rax, 60		; syscall number for exit
	mov	rdi, 0		; return value of exit
	syscall

