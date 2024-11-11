/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iullibar <iullibar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/24 16:01:26 by iullibar          #+#    #+#             */
/*   Updated: 2024/10/05 14:18:09 by iullibar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>
# include <stdarg.h>

int		ft_printf(char const *str, ...);
int		ft_switch_case(va_list args, const char c);
int		ft_printf_char(char c);
int		ft_printf_str(char *str);
int		ft_printf_pnt(unsigned long long int ptr);
int		ft_printf_nbr(int nbr);
int		ft_printf_uns(unsigned int nbr);
int		ft_printf_hex(unsigned int nbr, int upper);

#endif