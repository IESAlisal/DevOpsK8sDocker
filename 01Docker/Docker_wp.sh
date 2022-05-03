#!/bin/bash
#Ejecuta varios contenedores de la misma version en un bucle
for i in {1..7}
do
   docker run --name wp$i -p808$i:80 -d wordpress:php8.0-apache
done

#Ejecuta varios contenedores de wordpress en distintas versiones
docker run --name wp8apache92 -p 8092:80 -d wordpress:php8.0-apache
docker run --name wp8apache93 -p 8093:80 -d wordpress:php8.0-apache
docker run --name wp8apache94 -p 8094:80 -d wordpress:php7.3-apache
docker run --name wp8apache95 -p 8095:80 -d wordpress:latest