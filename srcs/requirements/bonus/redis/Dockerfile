FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install -y redis php-redis php8.2-mysqli 


CMD ["redis-server",  "--protected-mode", "no"]
