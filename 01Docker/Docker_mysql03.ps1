
# Borrar los docker si existen
docker rm mysql_1 -f
docker rm mysql_2 -f
docker rm mysql_3 -f
docker rm mysql_4 -f
docker rm mysql_5 -f

# Crear un docker al que no se puede acceder desde el exterior
docker run -d --name mysql_1 -e MYSQL_ROOT_PASSWORD=Monitor?2 mysql:latest

# Ejecutar la consola de mysql como root
# docker exec -it mysql_1 mysql -u root -pMonitor?2

# Crear dockers publicos en el puerto 3306X
 docker run -d --name mysql_2 -p 33062:3306 -e MYSQL_ROOT_PASSWORD=Monitor?2 mysql:latest
 docker run -d --name mysql_3 -p 33063:3306 -e MYSQL_ROOT_PASSWORD=Monitor?2 mysql:latest
 docker run -d --name mysql_4 -p 33064:3306 -e MYSQL_ROOT_PASSWORD=Monitor?2 mysql:latest
 docker run -d --name mysql_5 -p 33065:3306 -e MYSQL_ROOT_PASSWORD=Monitor?2 mysql:latest