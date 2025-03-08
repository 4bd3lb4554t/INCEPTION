#!/bin/bash

apt update &&  apt install openssl


openssl genpkey -algorithm RSA -out /etc/nginx/conf.d/ssl_certificate_key.pem -pkeyopt rsa_keygen_bits:2048


openssl req -new -x509 -key /etc/nginx/conf.d/ssl_certificate_key.pem -out /etc/nginx/conf.d/ssl_certificate.pem -days 365 << end
MA
abdelbassat quaoubai
UM6P
1337
inception
abdelbassat
abdoqoubai@gmail.com
end

chown -R nginx: /var/www/html/wordpress/

nginx -g "daemon off;"
