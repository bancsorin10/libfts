global ft_isascii

section .text

ft_isascii:
	cmp dil, 0x0
	jl false
	cmp dil, 0x7f
	jg false

true:
	mov ax, 1
	ret

false:
	mov ax, 0
	ret
