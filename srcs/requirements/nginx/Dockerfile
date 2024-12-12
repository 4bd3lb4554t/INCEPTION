
FROM debian:bullseye

RUN apt-get update -y && apt-get install nginx -y

WORKDIR /nginx


CMD ["nginx" , "-g" , "daemon off;"]
