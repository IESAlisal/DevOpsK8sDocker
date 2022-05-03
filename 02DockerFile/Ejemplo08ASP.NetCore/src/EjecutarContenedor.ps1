docker stop reservations_1
docker rm reservations_1
docker rmi reservationsystem

#Ejecutar la imagen con el proyecto ASP.NET Core
# Para ejecutar este powershell hay que estar en la carpeta src
docker build -t reservationsystem .

docker image list

docker run -p 8188:80 -d --name reservations_1 reservationsystem

# prueba
# http://localhost:8188/api/reservations/1
# Al ejecutar el código sólo se tiene que ver un archivo JSON resultado de la api
Start-Sleep -s 10
Start-Process "http://localhost:8188/api/reservations/1"