section .text
global _start
_start:

	; shifting bits in left side
	mov	al, 220
	shl	al, 1		; shifting 1 bit to left side of al

	; shifting bits in the right side
	mov	bl, 210
	shr	bl, 1		; shifting 1 bit to right side of bl

	; exit system call
	mov 	rax, 60 	; syscall number for exit
	mov	rdi, 0		; return status value for exit
	syscall	
