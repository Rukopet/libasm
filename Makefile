NAME = libasm.a
SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS = $(SRCS:.s=.o)
CC = nasm -f macho64
HEADER = header.h

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	ar rc $(NAME) $?

%.o: %.s $(HEADER)
	$(CC) $< -o $@

test_hz: all
	gcc main.c $(NAME) -o check
	./check

test: all
	gcc -L. -lasm main.c $(NAME) -o check
	./check

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f libasm.a check

re: fclean all

.PHONY: all clean fclean re
