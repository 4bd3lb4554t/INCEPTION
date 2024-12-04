
FROM debian:bullseye

RUN apt-get update -y && apt-get install nginx -y && apt-get install vim -y


WORKDIR /nginx

COPY ./conf/* /etc/nginx/

COPY ./script.sh  /nginx/


CMD ["nginx" ,  "-g" ,  "daemon off;"]



