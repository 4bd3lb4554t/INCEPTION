
FROM debian:bullseye

RUN apt-get update -y 

WORKDIR /wordpress

COPY ./script.sh  /usr/local/bin/

RUN mkdir  -p /var/www/wordpress

COPY index.html  /var/www/wordpress

CMD ["script.sh"]



