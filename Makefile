NAME = libftprintf.a
SRCS =	ft_printf.c \
				src/ft_itoa_intmax.c \
				src/ft_itoa_base_unsigned.c \
				src/ft_itoa_unsigned.c \
				src/conversion_b_p.c \
				src/conversion_c_s.c \
				src/conversion_num.c \
				src/conversion_o_x.c \
				src/fn_struct.c \
				src/ftprintf_helper.c \
				src/minus_plus_space.c \
				src/parse_data.c \
				src/parse_format.c \
				src/parse_type.c \
				src/parse_w_and_a.c \
				src/precision.c \
				src/type_define.c \
				src/wide_s.c \
				src/width.c \

OFILES =	ft_printf.o \
					ft_itoa_intmax.o \
					ft_itoa_base_unsigned.o \
					ft_itoa_unsigned.o \
					conversion_b_p.o \
					conversion_c_s.o \
					conversion_num.o \
					conversion_o_x.o \
					fn_struct.o\
					ftprintf_helper.o \
					minus_plus_space.o \
					parse_data.o \
					parse_format.o \
					parse_type.o \
					parse_w_and_a.o \
					precision.o \
					type_define.o \
					wide_s.o \
					width.o \

INCLUDES = -I header.h
LIBFT_H = libft/libft.h
LIBFT = libft/libft.a
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	make -C libft
	gcc $(FLAGS) $(INCLUDES) -c $(SRCS)
	ar rc $(NAME) $(OFILES) ./libft/*.o
	ranlib $(NAME)

clean:
	make -C libft clean
	/bin/rm -f $(OFILES)

fclean: clean
	/bin/rm -f $(NAME)
	make -C libft fclean

re: fclean all
