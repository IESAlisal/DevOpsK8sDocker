
#Ejecuta un contenedor con python
docker run -it --name pythonjavi1 -d python:alpine3.12

#Entrar al contenedor y ejecutar python
docker attach pythonjavi1

#Entrar al contenedor y ejecutar la terminal
#docker exec -it pythonjavi1 ash