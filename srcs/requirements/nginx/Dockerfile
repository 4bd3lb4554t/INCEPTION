
FROM debian:bullseye

RUN apt-get update -y && apt-get install nginx -y

WORKDIR /nginx

COPY ./conf/* /etc/nginx/

CMD ["nginx" ,  "-g" ,  "daemon off;"]

