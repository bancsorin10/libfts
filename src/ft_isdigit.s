global ft_isdigit

section .text

ft_isdigit:
	cmp dil, 0x30	; compare with 0
	jl false
	cmp dil, 0x39	; compare with 9
	jg false

	true:
		mov ax, 1
		ret
	
	false:
		mov ax, 0
		ret
