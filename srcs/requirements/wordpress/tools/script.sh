#!/bin/bash

sleep 10

apt install php-fpm unzip wget curl -y


cd /var/www/html

wget https://wordpress.org/latest.zip

unzip latest.zip

apt install sed -y 

sed -i 's/^listen = .*/listen = 0.0.0.0:9000/' /etc/php/8.2/fpm/pool.d/www.conf


chown -R www-data:www-data /var/www/html

rm -rf /var/www/html/wp-config-simple.php






curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info   # Test it works
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core install \
  --url="https://abquaoub.42.fr" \
  --title="My Awesome Site" \
  --admin_user="admin" \
  --admin_password="securepassword" \
  --admin_email="you@example.com" \
  --locale=fr_FR \
  --allow-root


php-fpm8.2 -F