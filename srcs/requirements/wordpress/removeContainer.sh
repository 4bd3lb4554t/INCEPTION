

docker stop $(docker ps -aq)

docker rm $(docker ps -aq)


docker rmi $(docker images -q)


# docker build -t wordpress_image .

# docker run --name container_wordpress  -d wordpress_image

# clear

# docker ps