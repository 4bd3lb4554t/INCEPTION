FROM debian:12

RUN apt update

RUN apt-get install -y redis php-redis php8.2-mysqli 

# COPY tools/script.sh /usr/bin

CMD ["redis-server",  "--protected-mode", "no"]
