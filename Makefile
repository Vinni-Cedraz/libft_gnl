# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vcedraz- <vcedraz-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/28 11:11:55 by vcedraz-          #+#    #+#              #
#    Updated: 2023/05/07 21:05:08 by vcedraz-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

## SET-UP VARIABLES ##
NAME = libft.a
NAME_BONUS = libft_bonus.a
CFLAGS = -Wall -Werror -Wextra -O3
RM = rm -f
OBJS_PATH = ./objs/
OBJSB_PATH = ./objs_bonus/

# COLORS
GRAY = \033[0;37m
RED = \033[0;91m
BLUE = \033[0;94m
CYAN = \033[0;96m
GREEN = \033[0;92m
WHITE = \033[0;97m
YELLOW = \033[0;93m
MAGENTA = \033[0;95m
DEF_COLOR = \033[0;39m

## SRCS VARIABLES ##
SRCS = ft_abs \
ft_atoi \
ft_free_t_split \
ft_free_arr \
ft_free_arr_size \
ft_isalpha \
ft_isascii \
ft_isdigit \
ft_ishexup \
ft_ishexlow \
ft_memchr \
ft_memcmp \
ft_memcpy \
ft_memorylen \
ft_memset \
ft_numlen \
ft_putchar \
ft_putchar_fd \
ft_strlen \
ft_atoi_base \
ft_strncmp \
ft_word_counter \
ft_calloc \
ft_memmove \
ft_putnbr_fd \
ft_putstr \
ft_putstr_fd \
ft_striteri \
ft_strrchr \
ft_strrev \
ft_swap \
ft_tolower \
ft_toupper \
ft_bzero \
ft_isalnum \
ft_itoa_base \
ft_putendl_fd \
ft_strchr \
ft_strdup \
ft_strlcat \
ft_strlcpy \
ft_strmapi \
ft_strnstr \
ft_strjoin \
ft_strtrim \
ft_substr \
ft_gnl \
ft_itoa \
ft_split \
ft_randomize_array \
ft_iswhitespace \
ft_check_balanced \

BSRCS = ft_lstadd_back \
ft_lstadd_front \
ft_lstfree \
ft_lstlast \
ft_lstnew \
ft_lstsize \
ft_lstprint \
ft_lstadd_here \
ft_lstdel_here \
ft_lstgetby_index \
ft_lstgetby_content \
ft_lst_make_it_circular \
ft_lstcircular_free \
ft_lstpop \
ft_lstshift \
	
OBJS = $(addprefix $(OBJS_PATH), $(addsuffix .o, $(SRCS)))
OBJSB = $(addprefix $(OBJSB_PATH), $(addsuffix .o, $(BSRCS)))
message = Objects are now $(GREEN)linked$(DEF_COLOR) into $(RED)$(NAME)$(DEF_COLOR)
bmessage = Bonus Objects are now $(GREEN)linked$(DEF_COLOR) into $(RED)$(NAME_BONUS)$(DEF_COLOR)

all: $(OBJS_PATH) $(NAME)
	@printf "\n$(message)\n"

$(NAME): $(OBJS)
	@printf "\n$(CYAN)linking objects into library $(NAME) $(DEF_COLOR)\n"
	ar -rcs $(NAME) $?

$(OBJS_PATH):
	@mkdir -p $(OBJS_PATH)

$(OBJS_PATH)%.o: %.c
	@printf "$(GREEN)[ Compiling ] $(GRAY) $< \n$(DEF_COLOR)"
	$(CC) $(CFLAGS) -c $< -o $@
	
bonus: $(OBJSB_PATH) $(NAME_BONUS)
	@printf "\n$(bmessage)\n"

$(NAME_BONUS): $(OBJSB)
	@printf "\n$(CYAN)linking bonus objects into library $(NAME_BONUS) $(DEF_COLOR)\n"
	ar -rcs $(NAME_BONUS) $?

$(OBJSB_PATH):
	@mkdir -p $(OBJSB_PATH)

$(OBJSB_PATH)%.o: %.c
	@printf "$(GREEN)[ Compiling ] $(GRAY) $< \n$(DEF_COLOR)"
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJS_PATH)
	@rm -rf $(OBJSB_PATH)

fclean: clean
	@rm -f $(NAME)
	@rm -f $(NAME_BONUS)

re: fclean all
