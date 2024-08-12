section .data
source_string:	db	"My Test String"

section .bss
destination_string: resb 15

section .text
global _start
_start:

	cld
	lea  	rsi, [source_string]
	lea	rdi, [destination_string]
	movsb

	; exit
	mov	rax, 60		; syscall number for exit
	mov	rdi, 0		; return status value for exit syscall
	syscall
