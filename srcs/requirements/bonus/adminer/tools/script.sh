#!/bin/bash

sleep 10


# cd /var/www/html

wget https://www.adminer.org/latest.php -O /var/www/html/adminer.php



php -S 0.0.0.0:3000