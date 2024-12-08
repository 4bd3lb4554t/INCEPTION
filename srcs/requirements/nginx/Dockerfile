
FROM debian:bullseye

RUN apt-get update -y && apt-get install nginx -y

WORKDIR /nginx

COPY ./conf/* /etc/nginx/

COPY ./script.sh   /usr/local/bin/

CMD ["script.sh"]

