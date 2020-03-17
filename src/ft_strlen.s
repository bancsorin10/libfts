global ft_strlen
	; int ft_strlen(const char *s);
section .text

ft_strlen:
	sub al, al		; make al 0 so we can search the string for the \0
	sub rcx, rcx
	not rcx			; make rcx 0 and negate to obtain biggest value
					; biggest value is also represented by -1
	cld				; clear direction flag
	repnz scasb		; scan rdi for \0 while decreasing rcx

	; now rcx = -strlen - 2
	; not rcx = strlen + 1
	
	not rax			; not 0 to obtain highest value
	sub rax, rcx
	cmp rcx, 0
	jz end
	dec rax

end:
	ret
