/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   conversion_c_s.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amelikia <amelikia@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/31 15:39:28 by amelikia          #+#    #+#             */
/*   Updated: 2018/10/31 20:20:05 by amelikia         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../header.h"

char	*conversion_s_ws(va_list arg, t_arg *data)
{
	char	*str;
	char	*tmp;
	wchar_t *wtmp;

	if (!ft_strcmp(data->format, "l"))
		data->type = 'S';
	if (data->type == 'S')
	{
		wtmp = va_arg(arg, wchar_t*);
		str = ft_wstrdup(wtmp);
	}
	else
	{
		tmp = va_arg(arg, char *);
		if (tmp == NULL)
			str = ft_strdup("(null)");
		else
			str = ft_strdup(tmp);
	}
	return (str);
}

char	*conversion_c_wc(va_list arg, t_arg *data)
{
	wchar_t w_tmp;
	char	*letter;
	char	tmp;

	if (!ft_strcmp(data->format, "l"))
		data->type = 'C';
	if (data->type == 'C')
	{
		w_tmp = va_arg(arg, wint_t);
		tmp = (char)w_tmp;
		if (tmp > 127)
			g_ohno++;
	}
	else
		tmp = va_arg(arg, int);
	letter = ft_makestr((char)tmp);
	return (letter);
}
