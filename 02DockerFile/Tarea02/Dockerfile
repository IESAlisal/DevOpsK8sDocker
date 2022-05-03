#Crea un dockerfile con la configuración necesaria para poner en marcha un servidor web
# sobre una imagen de Ubuntu 18.04
FROM ubuntu:18.04 

#Lo ejecuto en una sola linea y en una sola capa
RUN apt-get update && apt-get upgrade -y && apt-get install -y apache2 && cd /var/www/html

WORKDIR /var/www/html
#publicar el puerto 80
EXPOSE 80
#Arranco el servicio apache y la linea de comando
ENTRYPOINT service apache2 start && /bin/bash