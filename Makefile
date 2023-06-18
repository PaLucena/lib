# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: palucena <palucena@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/14 16:02:09 by palucena          #+#    #+#              #
#    Updated: 2023/06/18 19:55:00 by palucena         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex.a

SOURCE = pipex.c\
		pipex_utils.c

OBJ = $(SOURCE:.c=.o)

CC = gcc

CFLAGS = -Wall -Werror -Wextra

LIB = ar rcs

all: $(NAME)

$(NAME): $(OBJ)
		$(LIB) $(NAME) $(OBJ)

$(OBJ): $(SOURCE)
		$(CC)$(CFLAGS) -c $(SOURCE)

clean:
		rn -f $(OBJ)
		
fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY: re all clean fclean