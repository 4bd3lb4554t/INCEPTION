#!/bin/bash

apt install php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y

mkdir  -p /var/www/html

cd /var/www

apt install wget -y

wget https://wordpress.org/latest.tar.gz

tar -xvf latest.tar.gz

mkdir -p /var/www/html/wordpress

cp -rf wordpress/* /var/www/html/wordpress/

chown -R www-data:www-data /var/www/html/wordpress

chmod -R 755 /var/www/html/wordpress

cd /wordpress

mv /wordpress/wp-config.php /var/www/html/wordpress/


while true; do
    echo "This is an infinite loop"
    sleep 1  
done
