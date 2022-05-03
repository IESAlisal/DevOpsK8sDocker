#Utilizando una red comun
#Los contenedores tienen su propia resolución DNS. Saben reconocerse por nombres. En este caso son mimariadb y myadmin.
#Puedo conectarme al servidor de mariadb utilizando el puerto 8080 en un navegador web con el usuario y la contraseña definidos
docker network create redcomun
docker run --detach --name mimariadb --env MARIADB_USER=usu --env MARIADB_PASSWORD=password@ --env MARIADB_ROOT_PASSWORD=password@ -p 3306:3306 --network redcomun  mariadb:latest 
docker run --name myadmin -d -e PMA_HOST=mimariadb -p 8080:80 --network redcomun phpmyadmin
