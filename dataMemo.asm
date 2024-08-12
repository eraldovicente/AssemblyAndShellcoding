section .data
my_string: db "Hello"

section .text
global _start
_start:

	mov rax, my_string    ; moving address
	mov rbx, [my_string]  ; moving value

	; exit system
	mov rax, 60           ; syscall number for exit
	mov rdi, 0            ; return value for exit
	syscall
