/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_front.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vcedraz- <vcedraz-@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/16 00:22:53 by vcedraz-          #+#    #+#             */
/*   Updated: 2023/01/07 12:58:41 by vcedraz-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_bonus.h"

void	ft_lstadd_front(t_node **lst, t_node *new)
{
	if (*lst)
		new->next = *lst;
	*lst = new;
}
// you always forget why *lst = new... think that it would be "return *lst" if
// this wasn't a void function
