/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   megaphone.cpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abquaoub <abquaoub@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/02 22:20:54 by abquaoub          #+#    #+#             */
/*   Updated: 2024/09/17 19:52:52 by abquaoub         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <iostream>


void ft_print(char *str)
{
    for(int i = 0;str[i] ; i++)
        str[i]  = toupper(str[i]);
    std::cout << str ;
}

int main(int ac , char **av)
{
    if(ac == 1)
        std::cout << "* LOUD AND UNBEARABLE FEEDBACK NOISE *";
    
    for(int i = 1; av[i] ; i++)
        ft_print(av[i]);
    std::cout << "\n";
}