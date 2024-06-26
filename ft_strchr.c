/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dapereir <dapereir@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/09 10:36:50 by dapereir          #+#    #+#             */
/*   Updated: 2022/11/22 12:33:01 by dapereir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

char	*ft_strchr(const char *s, int c)
{
	char	*s2;

	s2 = (char *)s;
	while (*s2)
	{
		if (*s2 == (char)c)
			return (s2);
		s2++;
	}
	if ((char)c == '\0')
		return (s2);
	return (NULL);
}
