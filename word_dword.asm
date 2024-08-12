section .data
a: dw 10	; 2 bytes ( word )
b: dd 500	; 4 bytes ( doubles word )

section .text
global _start
_start:
	mov	ax, [a]		; moving a value int ax reg
	mov 	ebx, [b] 	; moving b value into ebx reg

	; exit syscall
	mov rax, 60 		; system call number for exit
	mov rdi, 0 		; return status value
	syscall


