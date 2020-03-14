#include "libfts.h"

int main()
{
	char dest[20], src[10];

	strcpy(dest, "hello ");
	strcpy(src, "world!");
	printf("%s\n", ft_strcat(dest, src));
	printf("%s\n", (ft_isalpha(dest[4]) ? "o is a letter" : "impossible"));
	printf("0 is %s\n", (ft_isdigit('0') ? "a digit" : "not a digit"));
	ft_bzero(dest, sizeof(dest));
	ft_bzero(src, sizeof(src));
	return (0);
}
