
FROM debian:bullseye

RUN apt-get update -y && apt-get install nginx -y && apt-get install vim -y


WORKDIR /nginx

COPY ./conf/* /etc/nginx/


COPY ./tools/script.sh    /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh


CMD ["bash" ,  "/usr/local/bin/script.sh"]

