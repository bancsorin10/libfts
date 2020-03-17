global ft_memcpy

section .text

ft_memcpy:
	mov r11, rdi		; store rdi address for return in r11
	mov rcx, rdx		; put the size in counter
	rep movsb			; mov data from rsi to rdi
	mov rax, r11

end:
	ret
