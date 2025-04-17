FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install -y wget

COPY ./conf/profile /var/www/html/website

COPY tools/script.sh /usr/bin

CMD [ "bash" , "/usr/bin/script.sh"]
