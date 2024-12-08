
docker stop $(docker ps -aq)

docker rm $(docker ps -aq)

docker rmi $(docker images -q)

docker build -t nginx_image .


docker run -v aa:/var/www/wordpress --name container_nginx -p 1337:9000 -d nginx_image

# clear

docker ps