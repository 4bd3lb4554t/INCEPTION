FROM debian:12

RUN apt-get update  -y && apt-get upgrade -y

RUN apt-get install php-redis php-fpm unzip wget curl sed libonig-dev libxml2-dev libmariadb-dev php-mysqli mariadb-client -y


COPY ./tools/script.sh /usr/bin/

COPY ./conf/wp-config.php /usr/

EXPOSE 9000

CMD [ "bash"  , "/usr/bin/script.sh" ]
