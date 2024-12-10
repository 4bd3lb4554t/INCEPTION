
FROM debian:bullseye

RUN apt-get update -y 

WORKDIR /wordpress

COPY script.sh  /usr/local/bin/

COPY wp-config.php /wordpress/

CMD ["script.sh"]



