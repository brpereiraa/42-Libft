/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: brpereir <brpereir@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/11 21:45:01 by brpereir          #+#    #+#             */
/*   Updated: 2023/04/11 21:45:02 by brpereir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char *ft_strnstr(char *needle, char *haystack, int n)
{
	int	i;
	int	j;

	i = 0;
	while(haystack[i])
	{
		j = 0;
		while(haystack[i + j] == needle[j++])
		{
			if (needle[j] == '\0')
				return (&haystack[i]);
		}
		i++;
	}
	return (0);
}