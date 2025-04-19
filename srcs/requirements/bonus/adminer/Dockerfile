FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install -y wget php php8.2-mysqli php8.2-pdo-mysql php8.2-mysql

RUN rm -rf /var/www/html/*

RUN wget https://www.adminer.org/latest.php -O /var/www/html/index.php

CMD ["php" , "-S" , "0.0.0.0:3000" , "-t" , "/var/www/html/"]


