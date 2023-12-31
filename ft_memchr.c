/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_memchr.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: cavan-vl <cavan-vl@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/10/16 13:11:34 by cavan-vl      #+#    #+#                 */
/*   Updated: 2023/11/07 16:07:57 by cavan-vl      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n)
	{
		if (((unsigned char *)s)[i] == (unsigned char)c)
			return ((unsigned char *)s + i);
		i++;
	}
	return (NULL);
}

// int	main(void)
// {
	// int tab[7] = {-49, 49, 1, -1, 0, -2, 2};
	// printf("%s\n", (char *)ft_memchr(tab, -1, 7));
	// printf("%s", (char *)memchr(tab, -1, 7));
//}