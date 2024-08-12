section .text
global _start
_start:

	; move constant values into registers
	mov rax, 7
	mov rbx, 5
	mov rcx, 100

	; exit system call
	mov rax, 60        ; system call number for exit
	mov rdi, 0	   ; return value for exit
	syscall
