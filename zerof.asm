section .text
global _start
_start:
	
	mov	rax, 12
	mov	rbx, 12
	sub	rax, rbx	; subtracting rbx from rax

	; exit system call
	mov	rax, 60		; syscall number for exit
	mov	rdi, 0		; system call return value
	syscall
