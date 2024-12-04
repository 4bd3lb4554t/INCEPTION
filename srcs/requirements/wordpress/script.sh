

sudo apt update && sudo apt upgrade -y

sudo apt install php-fpm php-mysql php-xml php-cli php-curl php-mbstring php-zip php-soap php-gd -y


cd /var/www/html

sudo wget https://wordpress.org/latest.tar.gz

sudo tar -xzvf latest.tar.gz

sudo chown -R www-data:www-data /var/www/html/wordpress

sudo chmod -R 755 /var/www/html/wordpress
