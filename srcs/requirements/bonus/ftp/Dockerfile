FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install -y vsftpd   

COPY tools/script.sh /usr/bin/

COPY ./conf/vsftpd.conf /etc/

CMD ["script.sh"]
