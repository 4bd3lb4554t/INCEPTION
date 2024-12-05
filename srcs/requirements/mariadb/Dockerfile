
FROM debian:bullseye


RUN  apt-get update -y 

WORKDIR /mariadb

COPY project  /mariadb/

COPY ./script.sh  /mariadb/

CMD ["bash" , "./mariadb/script.sh"]


