# Crea una imagen a partir de un archivo Dockerfile
# docker build . -t  <nombre de la imagen>
docker build . -t tarea02ubuntu1804

# Mostrar las imagenes creadas
docker images


docker run -ti  -d -p 8500:80 tarea02ubuntu1804 /bin/bash

#Para enlazarlo con un almacenamiento local
docker run -ti  -d -v /home/usuario/github/CEPDocker/web:/var/www/html -p 8502:80 tarea02ubuntu1804

docker exec -ti  .....  /bin/bash