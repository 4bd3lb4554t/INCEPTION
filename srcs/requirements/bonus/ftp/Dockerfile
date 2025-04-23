FROM debian:12

RUN apt-get  update  && apt-get upgrade -y

RUN apt-get install -y vsftpd

WORKDIR /ftp

COPY ./tools/script.sh /usr/local/bin/

COPY ./conf/vsftpd.conf /etc/

EXPOSE 21

CMD ["bash" , "/usr/local/bin/script.sh"]
