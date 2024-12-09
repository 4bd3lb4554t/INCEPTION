
FROM debian:bullseye

RUN apt-get update

WORKDIR /mariadb

COPY ./script.sh  /usr/local/bin/


CMD ["script.sh"]
