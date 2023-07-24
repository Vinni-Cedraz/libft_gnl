## LIBFT_GNL
* This library is the comming together of the two first projects in the 42 School's curriculum: libft and gnl

## LIBFT
* Libft is the reimplementation, of many functions of the basic traditional C libraries
* Why Libft? 
1. What better way of understanding those timeless functions than reverse engineering them?
2. We all need libraries in more complex projects.
3. Using my own library in later projects built responsibility towards the code I deliver, because if I'm gonna use it, than I have to deal with inconsistencies, bad practices and inefficiencies by constantly refactoring the old and making it useful.

## GNL
* GNL is a personalized version of the getline function (found in <stdlib.h>)
* Why GNL?
1. In many C projects we need to read from files one line at a time, but we are not allowed to use the original getline, so we make our own.
2. It's a hardcore introduction to memory allocation where there's ZERO TOLERANCE to leaks.
3. Doing it efficiently will affect the efficiency of your latter projects
4. I noticed how allocating and freeing on a loop or constantly using "higher" level string manipulation functions can make a program slower

## First Part - libc functions by #include headers:
 **from #include <ctype.h>**
* isalpha
* isdigit
* isalnum
* isascii
* isprint
* toupper
* tolower

**from #include <string.h>**
* strlen
* strdup
* memset
* memcpy 
* memmove
* memcmp
* memchr
* strlcpy (libbsd(7))
* strlcat (libbsd(7))
* strncmp
* strchr
* strrchr
* strnstr

**from #include <stdlib.h>**
* calloc
* atoi
* getline (ft_gnl)

**from #include <strings.h>**
* bzero

**from #include <stdio.h>**
* printf

## Second Part - functions that were not in the libc

* ft_substr
* ft_strjoin
* ft_strtrim
* ft_split (my own version here is not the same as the required in the curriculum)
* ft_itoa
* ft_strmapi
* ft_striteri
* ft_putchar_fd
* ft_putstr_fd
* ft_putendl_fd
* ft_putnbr_fd

**Bonus functions**
*at 42 School, bonus functions are suggestions for extra points but not required to get a pass*
* ft_lstnew
* ft_lstadd_back
* ft_lstadd_front
* ft_lstsize
* ft_lstlast

## Infinity Part: Unrequested extra functions added by me as needed

* ft_strrev
* ft_numlen
* ft_abs
* ft_word_counter
* ft_itoa_base
* ft_free_arr
* ft_free_arr_size
* ft_free_t_split
* ft_ishexlow
* ft_ishexup
* ft_memorylen
* ft_numlen
* ft_lst_make_it_circular
* ft_lstadd_here
* ft_lstdel_here
* ft_lstcircular_free
* ft_lstgetby_content
* ft_lstgetby_index
* ft_lstpop
* ft_lstprint
* ft_lstshift

## FURTHER DOCUMENTATION FOR EACH FUNCTION IS FOUND IN THE libft.h ##
![image](https://github.com/Vinni-Cedraz/libft_gnl/assets/92558763/2299f5fd-62e9-4e03-9845-4582e14a5a06)


## I assume most IDEs allow you to view the info in the header file from inside of a ".c" file, like so:
![image](https://github.com/Vinni-Cedraz/libft_gnl/assets/92558763/fc52957f-bf9e-4ee2-b11f-489539e50e3b)

**on [ft_neovim](github.com/Vinni-Cedraz/ft_neovim), SHIFT-K when the cursor is over a function does the magic btw**
