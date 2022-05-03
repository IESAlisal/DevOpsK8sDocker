#Ejecuta varios contenedores de wordpress en distintas versiones
docker run --name wp8apache92 -p 8092:80 -d wordpress:php8.0-apache
docker run --name wp8apache93 -p 8093:80 -d wordpress:php8.0-apache
docker run --name wp8apache94 -p 8094:80 -d wordpress:php7.3-apache
docker run --name wp8apache95 -p 8095:80 -d wordpress:latest

#Ejecuta varios contenedores iguales con un bucle
for ($i = 0; $i -lt 3; $i++) {
    $puertos = (8100 + $i).ToString() + ':80'
    #write-host ($puertos)
    write-host("docker run --name wordpress$i -p $puertos -d wordpress")
    docker run --name wordpress$i -p $puertos -d wordpress
}