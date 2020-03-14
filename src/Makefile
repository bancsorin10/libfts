all: nasm gcc clean

gcc:
	gcc main.c *.o -Wall -Werror -Wextra

nasm:
	nasm -felf64 ft_isalpha.s
	nasm -felf64 ft_isdigit.s
	nasm -felf64 ft_strcat.s
	nasm -felf64 ft_bzero.s

clean:
	rm -f *.o

fclean: clean
	rm -f a.out

re: fclean all
