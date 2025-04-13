FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install nginx openssl  -y 

COPY ./conf/default.conf /etc/nginx/conf.d

COPY tools/script.sh /usr/bin


EXPOSE 443

CMD [ "bash" , "/usr/bin/script.sh"]
