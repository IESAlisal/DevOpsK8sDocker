#Servidor web nginx
docker run --name nginx_1 -p 8511:80 -v /some/content:/usr/share/nginx/html:ro -d nginx