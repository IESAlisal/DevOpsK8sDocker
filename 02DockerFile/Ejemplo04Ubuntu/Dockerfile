FROM ubuntu:20.04 

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y upgrade && apt-get -y install apache2

# Je, instalar un mysql que no es necesario
RUN apt-get install -y mysql-server
 
COPY index.html /var/www/html/

RUN cd /var/www/html

CMD service apache2 start && service mysql start && tail -F /var/log/apache2/access.log