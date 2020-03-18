# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mschempe <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/24 13:17:42 by mschempe          #+#    #+#              #
#    Updated: 2018/09/27 15:07:56 by mschempe         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME1	= push_swap
NAME2	= checker

CFLAGS	= -Wall -Werror -Wextra

SRC1	= push_swap.c

SRC2	= checker.c

CFILES = $(FILES:%=srcs/%.c)

OFILES = $(FILES:%=./%.o)

all: $(NAME)

$(NAME): $(OFILES)
	$(MAKE) -C ./libft/
	gcc -o $(NAME) $(OFILES) ./libft/libft.a

$(OFILES): $(CFILES)
	gcc -c $(FLAGS) $(CFILES) -I ./inc/

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean allclear

.PHONY: all clean fclean re
