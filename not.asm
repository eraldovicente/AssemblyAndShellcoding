section .text
global _start
_start:

	mov	al, 2		; moving 2 into al reg
	not 	al		; applying not operation on al reg

	; exit system call
	mov 	rax, 60		; system call number
	mov	rdi, 0 		; return status value
	syscall

