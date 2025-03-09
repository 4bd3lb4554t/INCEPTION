FROM debian:12

RUN apt-get update -y

COPY ./tools/script.sh /usr/bin/

# EXPOSE 9000

CMD [ "bash"  , "/usr/bin/script.sh" ]
