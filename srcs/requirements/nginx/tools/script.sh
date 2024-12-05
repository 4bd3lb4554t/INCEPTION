
#!/bin/bash


mkdir  -p /var/www/data

mv /etc/nginx/index.html  /var/www/data 

apt-get install sed -y

apt-get install sudo -y



# ex -s /etc/hosts << EOF
# :%s/localhost/abquaoub/g
# :wq
# EOF




nginx -g "daemon off;"
