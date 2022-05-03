docker rm mariadbjavi -f
docker run -p 33061:3306 --detach --name mariadbjavi --env MARIADB_USER=usuario --env MARIADB_PASSWORD=password@ --env MARIADB_ROOT_PASSWORD=password@  mariadb:latest 


#esperar hasta que el contenedor se inicie y ejecutar el comando para probar
docker exec -it mariadbjavi mysql -u root -ppassword@ -e "CREATE DATABASE IF NOT EXISTS db_javi;"

docker exec -it mariadbjavi mysql -u root -ppassword@ -e "SHOW DATABASES;select user, host from mysql.user;"