#!/bin/bash

sleep 7

chmod 755 /var/www/html/wordpress/

openssl genpkey -algorithm RSA \
                -out /etc/nginx/conf.d/ssl_certificate_key.pem \
                -pkeyopt rsa_keygen_bits:2048


openssl req -x509 -nodes -days 365 \
            -newkey rsa:2048 \
            -keyout /etc/nginx/conf.d/ssl_certificate_key.pem \
            -out /etc/nginx/conf.d/ssl_certificate.pem \
            -subj "/C=/ST=/L=/O=/OU=/CN=/emailAddress="

nginx -g "daemon off;"

