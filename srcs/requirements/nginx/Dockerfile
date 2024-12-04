
FROM debian:bullseye

RUN apt-get update -y && apt-get install nginx -y && apt-get install vim -y



WORKDIR /nginx

COPY ./conf/* /etc/nginx/

COPY ./script.sh  /nginx/

# EXPOSE  80
# CMD ["nginx" ,  "-s" ,  "start"]

CMD ["nginx" ,  "-g" ,  "daemon off;"]



