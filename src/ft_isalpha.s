global ft_isalpha

section .text

ft_isalpha:
	mov ax, 0		; set the return to 0 by default
	cmp dil, 0x41	; compare to A
	jb false		; if lower go to end and dreturn
	cmp dil, 0x7a	;compare to z
	ja false
	cmp dil, 0x5a 	; compare to Z
	jbe true		; if greater check to see if its lower case
	cmp dil, 0x61	; compare to a
	jge true

false:
	mov ax, 0
	ret

true:
	mov ax, 1
	ret
