global ft_tolower

section .text

ft_tolower:
	mov al, dil
	cmp dil, 0x41
	jl false
	cmp dil, 0x5a
	jg false

true:
	add al, 0x20
	ret

false:
	ret
