FROM debian:12

RUN apt  update -y && apt  upgrade -y

RUN apt install nginx -y && apt install vim -y

COPY ./conf/default.conf /etc/nginx/conf.d

COPY ./profile /usr/share/nginx/html

COPY tools/script.sh /usr/bin

EXPOSE 8080

CMD ["script.sh"]
