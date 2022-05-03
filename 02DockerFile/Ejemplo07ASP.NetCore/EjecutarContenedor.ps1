docker rm ejemplo07_1
docker rmi ejemplo07aspnetcore

# Crea una imagen a partir de un archivo Dockerfile
# docker build . -t  <nombre de la imagen>
docker build . -t ejemplo07aspnetcore

# Mostrar las imagenes creadas
docker images

docker run -p 8187:80 -d --name ejemplo07_1 ejemplo07aspnetcore
# prueba
# http://localhost:8187/api/reservations/1
# Al ejecutar el código sólo se tiene que ver un archivo JSON resultado de la api