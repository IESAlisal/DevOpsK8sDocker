docker rm ubuntuflask_1 -f

# Crea y muestra las imagenes
docker build . -t ubuntuflask
docker images

# Crea un docker a partir de la imagen
docker run --name ubuntuflask_1 -ti -d -p 8561:5000 ubuntuflask