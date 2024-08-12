section .text
global _start

_start:

	mov	rcx, 4		; loop count
	jmp	my_loop

my_label:
	add	rax, 1		; adding 1 to rax reg

my_loop:
	loop my_label
	
	; exit system call
	mov 	rax, 60		; system call number
	mov	rdi, 0		; return status value for exit system call
	syscall
