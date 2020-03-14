global ft_isdigit

section .text

ft_isdigit:
	cmp dil, 0x30	; compare with 0
	jb false
	cmp dil, 0x39	; compare with 9
	ja false

	true:
		mov ax, 1
		ret
	
	false:
		mov ax, 0
		ret
