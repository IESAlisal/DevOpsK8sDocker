FROM alpine:3.7
RUN mkdir app
#Lo ejecuto en una sola linea y en una sola capa
RUN apk update  &&  apk upgrade && apk add apache2 && cd /app 

#RUN rc-update add apache2
#publicar el puerto 80
EXPOSE 80
#CMD Se ejecuta durante la ejecucion
#CMD /usr/sbin/httpd
#El entrypoint se ejecuta en cuanto acaba la instalacion del docker

#CMD rc-service apache2 start
#ENTRYPOINT [ "/usr/sbin/httpd","-D","FOREGROUND" ]