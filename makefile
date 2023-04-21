NAME = libft.a
OPTION = -c 
CFLAGS = -Wall -Werror -Wextra $(OPTION)
CC = cc 

SRCS = ft_atoi.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memcmp.c \
		ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strcmp.c \
		ft_strcpy.c ft_strdup.c ft_strjoin.c ft_strlen.c ft_strncmp.c ft_strncpy.c ft_strnstr.c ft_substr.c \
		ft_tolower.c ft_toupper.c ft_bzero.c ft_memcpy.c ft_strlcat.c ft_memmove.c ft_memchr.c ft_lstnew.c ft_lstsize.c ft_lstlast.c \
		ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

so:
	$(CC) -fPIC $(CFLAGS) $(SRCS)
	gcc -shared -o libft.so $(OBJS)

.SILENT: