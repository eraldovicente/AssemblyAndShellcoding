section .text

global _start

_start:

	;write

	xor	rax, rax
	mov 	al, 1
	xor	rdi, rdi
	add	rdi, 1

	push	0x0a646c72			;push the last 4 bytes
	mov	rbx, 0x6f57206f6c6c6548		;moving the rest part of hello world
	push	rbx				;push the rest part on stack

	mov	rsi, rsp
	
	xor	rdx, rdx
	add	rdx, 12
	syscall

	;exit

	xor	rax, rax
	mov	al, 60
	xor	rdi, rdi
	syscall
