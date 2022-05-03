FROM ubuntu:20.04
 
RUN apt-get update \ 
	&& apt-get upgrade -y \ 
	&& apt-get install -y nodejs \ 
    && apt-get install -y npm \
    # líneas añadidas 
    && rm -rf /var/lib/apt/lists/* 

WORKDIR /app    
COPY . /app 
RUN npm install

#CMD npm start