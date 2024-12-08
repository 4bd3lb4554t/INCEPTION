

# docker stop $(docker ps -aq)

# docker rm $(docker ps -aq)


# docker rmi $(docker images -q)


docker build -t wordpress_image .


docker run -v aa:/var/www/wordpress -it wordpress_image bash

# clear

# docker ps