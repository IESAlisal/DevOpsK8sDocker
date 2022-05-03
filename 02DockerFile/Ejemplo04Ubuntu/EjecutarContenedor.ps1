docker rm MiUbuntuApache_1 -f

docker build --pull --rm -f "02DockerFile/Ejemplo04Ubuntu/Dockerfile"  -t ubuntuapache2:latest "02DockerFile/Ejemplo04Ubuntu"

# Crea un docker a partir de la imagen
docker run --name MiUbuntuApache_1 -p 8581:80 ubuntuapache2

# --pull intenta recrear la imagen de nuevo
# --rm borra los contenedores intermedios
# -t pone nombre a la imagen y la etiqueta