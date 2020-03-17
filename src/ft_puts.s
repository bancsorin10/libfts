global ft_puts
extern ft_strlen

section .text

ft_puts:
	call ft_strlen
	mov rdx, rax		; mov len of string to rdx
	mov rax, 4			; sys_write
	mov rsi, rdi		; put string to rsi
	mov rdi, 1			; file descriptor 1 - stdout
	syscall

put_endl:
	mov rax, 0x20000004
	mov rdi, 1
	mov rsi, 0x0a
	mov rdx, 1
	syscall

end:
	mov rax, rcx
	ret
