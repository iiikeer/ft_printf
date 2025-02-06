# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iullibar <iullibar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/13 12:10:10 by iullibar          #+#    #+#              #
#    Updated: 2024/10/04 14:36:46 by iullibar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wextra -Wall -Werror
SRCS = ft_printf.c \
		ft_printf_char.c \
		ft_printf_str.c \
		ft_printf_pnt.c \
		ft_printf_nbr.c \
		ft_printf_uns.c \
		ft_printf_hex.c \

OBJS = $(SRCS:.c=.o)
NAME = libftprintf.a
LIB = ar rcs

all: $(NAME)

$(NAME): $(OBJS)
	$(LIB) $(NAME) $(OBJS)
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)
	
fclean: clean
	rm -f $(NAME)
	
re: fclean all
.PHONY: all clean fclean re