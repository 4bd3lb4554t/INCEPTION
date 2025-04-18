FROM debian:12


RUN apt-get update &&  apt-get upgrade -y


RUN apt-get install    cockpit sudo docker.io -y


COPY tools/script.sh /usr/bin/


EXPOSE 9090


CMD ["bash" , "/usr/bin/script.sh"]


