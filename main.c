#include "header.h"

int			main(void)
{
	char	buf[1000];
	char 	*tmp;

	tmp = "qdsvc fwgbfnerf";
	printf("------------strlen------------\n");
	printf("%li\n", ft_strlen("12345"));
	printf("%li\n", strlen("12345"));

	printf("------------strcpy------------\n");
	printf("%s\n", ft_strcpy(buf, tmp));
	memset(&buf, 0, 500);
	printf("%s\n", strcpy(buf, tmp));

	printf("------------strcmp------------\n");
	printf("%d\n",ft_strcmp(tmp, tmp));
	printf("%d\n",strcmp(tmp, tmp));

	printf("------------write-------------\n");
	printf("-------------my---------------\n");
	ft_write(1, "hello world!\n", 13);
	printf("%d -- %zd\n", errno, ft_write(1, "hello world!\n", -13));
	printf("-------------st---------------\n");
	write(1, "hello world!\n", 13);
	printf("%d -- %zd\n", errno, write(1, "hello world!\n", -13));

	printf("------------read--------------\n");
	printf("-------------my---------------\n");
	int fd = open("test.txt", O_RDONLY);
	printf("self-written = %zd|\n", ft_read(fd, tmp, -15));
	printf("result self-written = %s\n", buf);
	printf ("error self-written = |%d|\n", errno);
	printf("-------------st---------------\n");
	printf("           standart = |%zd|\n", read(fd, buf, -15));
	printf("    result standart = %s\n", buf);
	printf ("    error standart = %d|\n", errno);
	close(fd);

	printf("---------ft_strdub------------\n");
	printf("%s-\n", ft_strdup(""));
	printf("%s-\n", strdup(""));
	printf("%s-\n", ft_strdup("normal"));
	printf("%s-\n", strdup("normal"));
	printf("%s-\n", ft_strdup("\0\0\0"));
	printf("%s-\n", strdup("\0\0\0"));

//	printf("%s-\n", ft_strdup(NULL));
//	printf("%s-\n", strdup(NULL));

//	memset(&buf, 0, strlen(buf));
//	read(0, buf, 200);
//	printf("stdin standart read: = |%s", buf);
//	printf("\n");
//	ft_read(0, buf, 200);
//	printf("      stdin ft_read: = |%s", buf);
//	printf("\n");


	return (0);
}