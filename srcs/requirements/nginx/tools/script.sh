
#!/bin/bash


mkdir  /var/www/data

mv /etc/nginx/index.html  /var/www/data 

nginx -g "daemon off;"
