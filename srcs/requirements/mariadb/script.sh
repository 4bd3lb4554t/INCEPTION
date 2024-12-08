

apt update &&  apt upgrade -y

apt install mariadb-server  -y

mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld


mysql -u root -p
CREATE DATABASE wordpress_db;
CREATE USER 'wordpress_user'@'localhost' IDENTIFIED BY 'strong_password';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;


mysqld



