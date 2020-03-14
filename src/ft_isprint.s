global ft_isprint

section .text

ft_isprint:
	cmp dil, 0x20
	jl false
	cmp dil, 0x7f
	jg false

true:
	mov ax, 1
	ret

false:
	mov ax, 0
	ret
