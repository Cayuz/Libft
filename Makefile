NAME		:= libft.a

INCLUDE		:= libft.h

CC			:= gcc
CFLAGS		:= -Wall -Werror -Wextra

SRC_FILES	:=  ft_isalpha.c \
				ft_isdigit.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isprint.c \
				ft_strlen.c \
				ft_strlcat.c \
				ft_strlcpy.c \
				ft_toupper.c \
				ft_tolower.c \
				ft_bzero.c \
				ft_strchr.c \
				ft_strrchr.c \
				ft_strncmp.c \
				ft_strnstr.c \
				ft_strmapi.c \
				ft_memset.c \
				ft_memcpy.c \
				ft_memmove.c \
				ft_memcmp.c \
				ft_memchr.c \
				ft_atoi.c \
				ft_calloc.c \
				ft_strdup.c \
				ft_substr.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_striteri.c \
				ft_split.c \
				ft_itoa.c \
				ft_putchar_fd.c \
				ft_putnbr_fd.c \
				ft_putendl_fd.c \
				ft_putstr_fd.c \

SRC_BONUS	:= ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c \
				ft_lstlast_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c ft_lstmap_bonus.c \

OBJS		:= $(SRC_FILES:.c=.o)

OBJS_BONUS	:= $(SRC_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS) $(INCLUDE)
	@ echo "Program is made!"
	@ ar rcs $(NAME) $?

%.o: %.c
	@ $(CC) $(CFLAGS) -c -o $@ $<

bonus: $(OBJS_BONUS) $(INCLUDE)
	@ echo "Bonus program is made!"
	@ ar rc $(NAME) $^

clean:
	@ echo "Bye Bye ofiles!"
	@ rm -rf $(OBJS)
	@ rm -rf $(OBJS_BONUS)

fclean: clean
	@ echo "Bye Bye programs!"
	@ rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re libft
