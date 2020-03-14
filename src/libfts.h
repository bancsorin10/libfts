#ifndef LIBFTS_H
# define LIBFTS_H


# include <stdio.h>
# include <string.h>

extern char *ft_strcat(char *dest, char *src);
extern void ft_bzero(void *s, size_t n);
extern int	ft_isalpha(int c);
extern int	ft_isdigit(int c);
extern int	ft_isalnum(int c);
extern int	ft_isascii(int c);
extern int	ft_isprint(int c);
extern int	ft_toupper(int c);
extern int	ft_tolower(int c);


#endif
