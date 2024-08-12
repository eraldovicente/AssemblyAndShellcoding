section .data
string1:	db	"ABC"

string2:	db	"ABCD"

section .text
global _start
_start:

	cld
	mov	rcx, 4
	lea	rsi, [string1]
	lea 	rdi, [string2]

	rep cmpsb

	; exit
	mov	rax, 60		; syscall number for exit
	mov	rdi, 0		; return status value for exit syscall
	syscall

