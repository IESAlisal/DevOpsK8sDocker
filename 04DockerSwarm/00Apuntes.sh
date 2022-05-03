#Nodo maestro o manager. Genera un token para añadir los workers al cluster de docker.
docker swarm init --advertise-addr 192.168.2.146
#Si quiero generar un token para añadir un nuevo maestro
docker swarm join-token manager

#Para añadir un co-worker hay que utilizar la salida del comando anterior
docker swarm join --token SWMTKN-1-0ts74i2k45poeymvdngq4yefcmslf942rcgz311bva4heuimng-ci9tg5gwa73aq9tj4jfgzrykl 192.168.2.146:2377

#Se recuerda que hay que poner en marcha docker
#Comando para que se arranque al inicio
rc-update add docker boot
service docker start


#Desde un manager se pueden ver las opciones que tienen los MANAGER/MAESTROS
docker swarm

docker node ls

#Luego se crea un portainer que tendrá un servidor y un agente en cada uno de los nodos docker 
#para que se pueda coger y poner información en esos nodos


#Despliegue de una aplicacion un un cluster:
#Desde un nodo manager hay que ejecutar
#El docker-compose es el del portainer que tiene el servidor y el agente
docker stack deploy -c docker-compose.yaml portainer-swarm

#Despues abrimos el navegador con la ip del nodo maestro de docker y puerto 9000
# http://<ip nodo>:9000