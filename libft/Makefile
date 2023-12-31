# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rhsu <rhsu@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/26 23:46:48 by rhsu              #+#    #+#              #
#    Updated: 2023/09/30 19:59:10 by rhsu             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror
NAME = libft.a
INC = libft.h
CFILES = ft_atoi.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_itoa.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
 		ft_split.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_tolower.c \
		ft_toupper.c

OFILES = $(CFILES:.c=.o)

BONUS_CFILES = ft_lstnew_bonus.c \
		ft_lstadd_front_bonus.c \
		ft_lstsize_bonus.c \
		ft_lstlast_bonus.c \
		ft_lstadd_back_bonus.c \
		ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c \
		ft_lstiter_bonus.c \
		ft_lstmap_bonus.c
	
BONUS_OFILES = $(BONUS_CFILES:.c=.o)

.PHONY: all bonus clean fclean re

all: $(NAME)

$(NAME): $(OFILES) 
	ar rc $(NAME) $(OFILES)
	ranlib $(NAME)
	@echo "$@ compiled"

bonus: $(BONUS_OFILES)
	ar rc $(NAME) $(BONUS_OFILES)
	ranlib $(NAME)
	@echo "bonus library compiled"

%.o : %.c $(INC)
	cc $(FLAGS) -c $< -o $@

clean:
	@rm -f $(OFILES) $(BONUS_OFILES)
	@echo "libft objects file removed"

fclean:	clean
	@/bin/rm -f $(NAME)
	@echo "$(NAME) full cleaned"

re: fclean all
