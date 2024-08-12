section .data

; define bytes
my_str:    db	"abc"
my_number: db   5

; define word
a:         dw   3,7

; define double word
b:         dd   55,83

; define quad word
c:         dq   9



section .bss

; reserve bytes
var1: resb 5

; reserve word
var2: resw 2

; reserve double word
var3: resd 3

; reserve quad word
var resq 2
