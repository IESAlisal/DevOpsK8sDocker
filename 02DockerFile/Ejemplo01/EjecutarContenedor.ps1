docker rm UbuntuNode_1 -f

docker build --pull --rm -f "02DockerFile/Ejemplo01/Dockerfile" -t dockerejemplo01:latest "02DockerFile/Ejemplo01"

# Crea un docker a partir de la imagen
docker run --name UbuntuNode_1 -ti -d -p 8511:80 dockerejemplo01:latest

# --pull intenta recrear la imagen de nuevo
# --rm borra los contenedores intermedios
# -t pone nombre a la imagen y la etiqueta



