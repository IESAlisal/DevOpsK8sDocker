docker rm MiAlpine_1 -f

docker build --pull --rm -f "02DockerFile/Ejemplo05Alpine/Dockerfile" -t dockerejemplo05:latest "02DockerFile/Ejemplo05Alpine"

# Crea un docker a partir de la imagen
docker run --name MiAlpine_1 -ti -d -p 8585:80 dockerejemplo05:latest /bin/ash

# --pull intenta recrear la imagen de nuevo
# --rm borra los contenedores intermedios
# -t pone nombre a la imagen y la etiqueta