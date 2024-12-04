

docker stop $(docker ps -aq)

docker rm $(docker ps -aq)


docker rmi $(docker images -q)


docker build -t mariadb_image .

docker run --name container_mariadb  -d mariadb_image

clear

docker ps