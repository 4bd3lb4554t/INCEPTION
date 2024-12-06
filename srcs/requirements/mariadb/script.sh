

apt update &&  apt upgrade -y

apt install mariadb-server  -y

mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

mysqld
