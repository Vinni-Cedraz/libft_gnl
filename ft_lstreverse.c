/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstreverse.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vcedraz- <vcedraz-@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/04 10:01:00 by vcedraz-          #+#    #+#             */
/*   Updated: 2024/07/04 10:02:06 by vcedraz-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_bonus.h"

// reverses a singly-linked list
t_node	*ft_lstreverse(t_node *head)
{
	t_node			*reversed_list;
	const t_node	*save_head = head;

	reversed_list = NULL;
	while (head)
	{
		ft_lstadd_front(&reversed_list, ft_lstnew(head->content));
		head = head->next;
	}
	ft_lstfree((t_node **)&save_head);
	return (reversed_list);
}
