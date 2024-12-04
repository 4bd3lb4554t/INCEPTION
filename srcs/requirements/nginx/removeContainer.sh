

docker stop $(docker ps -aq)

docker rm $(docker ps -aq)


docker rmi $(docker images -q)


# docker build -t nginx_image .

# docker run --name container_nginx -p 80:80 -d nginx_image

# clear

# docker ps