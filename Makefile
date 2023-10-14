# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rhsu <rhsu@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/26 23:46:48 by rhsu              #+#    #+#              #
#    Updated: 2023/10/14 01:32:17 by rhsu             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a
INC = ft_printf.h

LIB = libft.a
LIB_DIR = libft/
OBJS = *.o

CFILES = ft_printf.c \
		ft_extract_print_1_conv.c \
		ft_hexint.c \
		ft_min_prec_conv.c \
		ft_p_chr.c \
		ft_p_common_fn.c \
		ft_p_conv.c \
		ft_p_hex.c \
		ft_p_int.c \
		ft_p_ptr.c \
		ft_p_str.c \
		ft_p_unsigned.c \
		ft_utoa.c

OFILES = $(CFILES:.c=.o)

BONUS_CFILES = 	ft_printf.c \
		ft_extract_print_1_conv.c \
		ft_hexint.c \
		ft_min_prec_conv.c \
		ft_p_chr_bonus.c \
		ft_p_common_fn.c \
		ft_p_conv_bonus.c \
		ft_p_hex_bonus.c \
		ft_p_int_bonus.c \
		ft_p_ptr_bonus.c \
		ft_p_str_bonus.c \
		ft_p_unsigned_bonus.c \
		ft_utoa.c

BONUS_OFILES = $(BONUS_CFILES:.c=.o)

.PHONY: all bonus clean fclean re makelibft

all: $(NAME)

$(NAME): $(OFILES) makelibft
	ar rc $(NAME) $(OFILES) $(LIB_DIR)$(OBJS)
	ranlib $(NAME)
	@echo "$@ compiled"

makelibft:
	make -C $(LIB_DIR)
	@echo "$(LIB_DIR)$(LIB) created"


bonus: $(BONUS_OFILES) makelibft
	ar rc $(NAME) $(BONUS_OFILES) $(LIB_DIR)$(OBJS)
	ranlib $(NAME)
	@echo "bonus library compiled"

%.o : %.c $(INC)
	cc $(FLAGS) -c $< -o $@

clean:
	@rm -f $(OFILES) $(BONUS_OFILES) $(LIB_DIR)$(OBJS)
	@echo "ftprintf, libft objects file removed"

fclean:	clean
	@rm -f $(NAME)
	@rm -f $(LIB_DIR)$(LIB)
	@echo "$(NAME), $(LIB_DIR)$(LIB) removed "

re: fclean all
