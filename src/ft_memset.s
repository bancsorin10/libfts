global ft_memset

section .text

ft_memset:
	mov r11, rdi		; store the initial adress of rdi for return
	mov rax, rsi			; mov the memset byte in al
	mov rcx, rdx		; mov the size of rdi to rcx
	rep stosb			; store byte al in rdi

	mov rax, r11
	ret
