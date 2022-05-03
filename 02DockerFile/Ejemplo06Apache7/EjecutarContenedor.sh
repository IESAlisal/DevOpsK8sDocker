docker rm apachephp7_1 -f
docker rm apachephp7_2 -f

# Crea y muestra las imagenes
docker build . -t imagenphp7
docker images
# Ejecuta la imagen
docker run --name apachephp7_1 -ti -d -p 8501:80 imagenphp7

# Para enlazarlo con un almacenamiento local
# $PWD marca la ruta donde esta el proyecto
docker run --name apachephp7_2 -ti -d -p 8502:80 -v $PWD/web:/var/www/html imagenphp7

# docker exec -ti  apachephp7_1  /bin/bash

