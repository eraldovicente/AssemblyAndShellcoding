section .text
global _start

_start:

	push	rbp		; pushing the rbp into top of stack
	mov	rbp, rsp	; moving the value of rsp to rbp
	sub	rsp, 0x8

	mov	QWORD [rsp], 4	; moving 4 on the top of the stack
	mov	rsp, rbp	; moving rbp value to rsp
	pop	rbp

	; exit
	mov	rax, 60		; exit system call number
	mov	rdi, 0		; return status value for exit
	syscall
