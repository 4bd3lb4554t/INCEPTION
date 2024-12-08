#!/bin/bash

apt install php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y

mkdir  -p /var/www/wordpress

cd /var/www/

apt install wget -y

wget https://wordpress.org/latest.tar.gz

tar -xvf latest.tar.gz

# mv wordpress /var/www/wordpress

chown -R www-data:www-data /var/www/wordpress

chmod -R 755 /var/www/wordpress


# while true  for   is container is running for test ??
while true; do
    echo "This is an infinite loop"
    sleep 1  
done
