#Instalación de Drupal en dos contenedores
#Contenedor con servidor web y otro contenedor con un servidor de base de datos
#https://hub.docker.com/_/drupal

docker run --name IESAlisal-drupal -p 8080:80 -d drupal 


docker run -d --name IESAlisal-mysql -e MYSQL_DATABASE=drupal `
    -e MYSQL_USER=user -e MYSQL_PASSWORD=Monitor?2 -e MYSQL_ROOT_PASSWORD=Monitor?2  `
        mysql:5.7

#docker inspect para ver el parámetro IPAddress ;-)

#Lanzar la instalación de drupal http://localhost:8080/
