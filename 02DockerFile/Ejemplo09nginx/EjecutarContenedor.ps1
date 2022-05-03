docker rm MiNignx_1 -f
docker rmi dockerejemplo09

docker build --pull --rm -f "02DockerFile/Ejemplo09nginx/Dockerfile" -t dockerejemplo09:latest "02DockerFile/Ejemplo09nginx"

# Crea un docker a partir de la imagen
docker run --name MiNignx_1 -d -p 8589:80 dockerejemplo09:latest 

# --pull intenta recrear la imagen de nuevo
# --rm borra los contenedores intermedios
# -t pone nombre a la imagen y la etiqueta