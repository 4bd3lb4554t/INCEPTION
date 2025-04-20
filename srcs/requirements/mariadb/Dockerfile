FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install mariadb-server  sed -y

COPY ./tools/script.sh /usr/local/bin/

COPY ./conf/user.sql /usr/bin/

EXPOSE 3306

CMD ["bash" , "/usr/local/bin/script.sh"]

