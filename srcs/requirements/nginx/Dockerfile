
FROM debian:bullseye

RUN apt-get update -y 

WORKDIR /nginx

COPY script.sh /usr/local/bin/

COPY ./conf/* /etc/nginx/

COPY wordpress /nginx/


CMD ["script.sh"]

