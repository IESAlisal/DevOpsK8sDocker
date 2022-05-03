# Crea una imagen a partir de un archivo Dockerfile
# docker build . -t  <nombre de la imagen>
docker build . -t XXXXXXXXXXXXXXXXXXXXX

# Mostrar las imagenes creadas
docker images

docker run -ti  -d -p 8500:80 XXXXXXXXXXXXXXXXXXXXX /bin/bash

docker rmi XXXXXXXXXXXXXXXXXXXXX