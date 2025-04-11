FROM debian:12

RUN apt-get update  -y

RUN apt-get install -y libonig-dev libxml2-dev libmariadb-dev php-mysqli mariadb-client


COPY ./tools/script.sh /usr/bin/


EXPOSE 9000

CMD [ "bash"  , "/usr/bin/script.sh" ]
