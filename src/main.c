#include "libfts.h"
#include <string.h>

int main()
{
	char dest[20], src[10];

	strcpy(dest, "hello ");
	strcpy(src, "world!");
	printf("%s\n", ft_strcat(dest, src));
	printf("%s\n", (ft_isalpha(dest[4]) ? "o is a letter" : "impossible"));
	printf("0 is %s\n", (ft_isdigit('0') ? "a digit" : "not a digit"));
	printf("0 is %s\n", (ft_isalnum('0') ? "alnum" : "not alnum"));
	printf("0 is %s\n", (ft_isascii('0') ? "ascii" : "not ascii"));
	printf("0 is %s\n", (ft_isprint('0') ? "print" : "not print"));
	printf("upper case of a is %c\n", ft_toupper('a'));
	printf("lower case of A is %c\n", ft_tolower('a'));
	printf("lenght of word abracadabra is %d\n", ft_strlen("abracadabra"));
	ft_bzero(dest, sizeof(dest));
	ft_bzero(src, sizeof(src));
	ft_memset(src, 'a', 6);
	printf("memsetted to a %s\n", src);
	ft_memcpy(dest, src, 6);
	printf("used memcpy: %s\n", dest);
	return (0);
}
