#!/bin/bash

chown -R www-data:www-data /var/www/html/wordpress

chmod -R 755 /var/www/html/wordpress

redis-server --protected-mode no 

