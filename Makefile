# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afaddoul <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/08 09:09:52 by afaddoul          #+#    #+#              #
#    Updated: 2019/08/15 19:19:46 by afaddoul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =libft.a
FLAGS = -Wextra -Wall -Werror
SRC = ft_atoi.c ft_bzero.c ft_digit_counter.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strlowcase.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strrev.c ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c ft_strupcase.c ft_swap.c ft_tolower.c ft_toupper.c ft_unsigned_nb_len.c ft_word_counter.c
OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)

%.o : %.c
	gcc $(FLAGS)  $< -o $@ -c 

clean :
	/bin/rm -f $(OBJ)
	/bin/rm -f libft.h.gch

fclean : clean
	/bin/rm -f $(NAME)

re : fclean all
