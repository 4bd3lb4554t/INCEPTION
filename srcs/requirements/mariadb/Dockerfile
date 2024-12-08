
FROM debian:bullseye

RUN apt-get update

RUN apt install mariadb-server  -y

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

WORKDIR /mariadb

COPY ./script.sh  /mariadb/


EXPOSE 3306

CMD ["mysqld"]
