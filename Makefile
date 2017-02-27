# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nterol <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/02/07 15:47:21 by nterol            #+#    #+#              #
#    Updated: 2017/02/21 16:22:47 by mowen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

CFLAGS = -Wall -Werror -Wextra

SRC = main.c fillit_is_valid.c fillit_size_map.c fillit_createtettab.c \
	  fillit_newtetlist.c fillit_read_file.c \
	  fillit_put_tet.c ft_putnbrendl.c fillit_reduce_tet.c fillit_lstpast.c \
	  fillit_algorythm.c ft_putenderror.c

OBJ = $(subst .c,.o,$(SRC))

$(NAME):
		gcc $(CFLAGS) -c $(SRC) -I ./libft
		make -C ./libft/
		gcc $(OBJ) -o $(NAME) ./libft/libft.a

all: $(NAME)

clean:
	rm -rf $(OBJ)
	make clean -C ./libft

fclean: clean
	rm -rf fillit
	make fclean -C ./libft

re: fclean all

.PHONY: all, clean, fclean, re, libft
