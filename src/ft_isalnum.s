global ft_isalnum
extern ft_isdigit
extern ft_isalpha

section .text

ft_isalnum:
	call ft_isdigit
	cmp ax, 1
	je end
	call ft_isalpha
	cmp ax, 1
	je end

end:
	ret
