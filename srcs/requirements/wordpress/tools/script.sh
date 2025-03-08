#!/bin/bash

apt install php-fpm -y

apt install unzip wget -y

cd /var/www/html

wget https://wordpress.org/latest.zip

unzip latest.zip

# mv wordpress my-wordpress

# cd my-wordpress


php-fpm8.2 -F

