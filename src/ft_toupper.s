global ft_toupper

section .text

ft_toupper:
	mov al, dil
	cmp dil, 0x61
	jl false
	cmp dil, 0x7a
	jg false

true:
	sub al, 0x20
	ret

false:
	ret
