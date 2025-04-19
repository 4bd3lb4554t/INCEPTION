FROM debian:12

RUN apt-get  update -y && apt-get upgrade -y

RUN apt-get install -y wget php

RUN rm -rf /var/www/html/*

RUN wget https://www.adminer.org/latest.php -O /var/www/html/index.php

CMD ["php" , "-S" , "0.0.0.0:3000" , "-t" , "/var/www/html/"]


