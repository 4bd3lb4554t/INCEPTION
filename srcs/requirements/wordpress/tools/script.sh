#!/bin/bash

sleep 5


sed -i 's/^listen = .*/listen = 0.0.0.0:9000/' /etc/php/8.2/fpm/pool.d/www.conf


wget https://wordpress.org/latest.zip


unzip -o latest.zip -d /var/www/html






# this for complete installation via command line 
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp







wp core install \
  --path="/var/www/html" \
  --url="https://abquaoub.42.fr" \
  --title="First Page in Wordpress" \
  --admin_user="abdelbassat" \
  --admin_password="abdelbassat@@" \
  --admin_email="you@example.com" \
  --locale=fr_FR \
  --allow-root


  
wp user create abquaoub admin@example.com --role=editor --user_pass=1234  --allow-root




php-fpm8.2 -F