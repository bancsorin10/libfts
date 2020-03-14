global ft_strcat

section .text

ft_strcat:
	mov rax, rdi ;move adress of rdi to rax (for returning purposes)

	loop_s1:
		cmp [rdi], byte 0
		jz loop_s2
		inc rdi
		jmp loop_s1

	;append second string to first string
	loop_s2:
		cmp [rsi], byte 0
		jz end
		mov cx, [rsi] ;can't do mov [rdi], [rsi] we need an aux register (cx)
		mov [rdi], cx
		inc rdi
		inc rsi
		jmp loop_s2

	end:
		mov [rdi], byte 0 ; finish the string with the \0 char
		ret
