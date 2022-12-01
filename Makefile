# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dapereir <dapereir@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/10 11:45:20 by dapereir          #+#    #+#              #
#    Updated: 2022/12/01 09:43:15 by dapereir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=	libftprintf.a

CC				=	gcc
CFLAGS			=	-Wall -Wextra -Werror
AR				=	ar rcs
RM				=	rm -f

SRCS			=	ft_printf.c\
					ft_strlen.c\
					ft_strchr.c\
					ft_print_c.c\
					ft_print_s.c\
					ft_print_i.c\
					ft_print_u.c\
					ft_print_x.c\
					ft_print_p.c\
					
OBJS			=	$(SRCS:.c=.o)

INCLUDES_DIR	=	.
INCLUDES		=	${INCLUDES_DIR}/ft_printf.h

%.o:			%.c Makefile ${INCLUDES}
				${CC} ${CFLAGS} -I ${INCLUDES_DIR} -c $< -o $@

all:			${NAME}

${NAME}:		${OBJS}
				${AR} ${NAME} ${OBJS}

clean:
				${RM} ${OBJS}

fclean:			clean
				${RM} ${NAME}

re:				fclean
				${MAKE} all

.PHONY:			all clean fclean re
