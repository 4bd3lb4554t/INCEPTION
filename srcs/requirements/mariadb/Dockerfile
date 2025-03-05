FROM debian:12

RUN apt update -y

RUN apt install mariadb-server -y

COPY script.sh /usr/bin/

CMD [ "bash"  , "/usr/bin/script.sh" ]
