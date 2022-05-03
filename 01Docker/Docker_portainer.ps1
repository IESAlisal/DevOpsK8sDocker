# https://hub.docker.com/r/portainer/portainer-ce

# https://docs.portainer.io/v/ce-2.9/start/install/server/docker/wsl
docker volume create portainer_data

docker run -d -p 8043:8043 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data cr.portainer.io/portainer/portainer-ce:2.9.3

# Now that the installation is complete, you can log into your Portainer Server instance 
# by opening a web browser and going to
# https://localhost:9443