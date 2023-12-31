/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strchr.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: cavan-vl <cavan-vl@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/10/14 15:22:56 by cavan-vl      #+#    #+#                 */
/*   Updated: 2023/11/04 21:22:07 by cavan-vl      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	int	i;

	i = 0;
	if ((unsigned char)c == '\0')
	{
		while (s[i])
			i++;
		return ((char *)(s) + i);
	}
	while (s[i])
	{
		if (s[i] == (unsigned char)c)
			return ((char *)(s) + i);
		i++;
	}
	return (NULL);
}
