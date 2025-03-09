#!/bin/bash

apt install php-fpm -y

apt install unzip wget -y

# cd /var/www/html

# wget https://wordpress.org/latest.zip

# unzip latest.zip

apt install sed -y 

sed -i 's/^listen = .*/listen = 0.0.0.0:9000/' /etc/php/8.2/fpm/pool.d/www.conf


chown -R www-data:www-data /var/www/html

php-fpm8.2 -F

