FROM debian:12

RUN apt-get update -y

RUN apt-get install mariadb-server sed -y

COPY ./tools/script.sh /usr/bin/

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/


EXPOSE 3306

CMD [ "bash"  , "/usr/bin/script.sh" ]
