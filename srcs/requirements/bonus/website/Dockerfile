FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install -y wget nginx


COPY ./conf/profile /var/www/html/



CMD ["nginx" , "-g" , "daemon off;"]
