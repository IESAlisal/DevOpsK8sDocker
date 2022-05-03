# Implementación de una imagen de Docker en una instancia de Azure Container

[Microsoft Learn Containers](https://docs.microsoft.com/es-es/learn/modules/intro-to-containers/6-deploy-docker-image-to-container-instance)

az acr create --name AConRegJaviteran --resource-group grJaviTeran --sku standard --admin-enabled true

## Los repositorios de Azure Container Registry son privados — no admiten el acceso no autenticado

docker login AConRegJaviteran.azurecr.io

## Para saber los credenciales

az acr credential show --name AConRegJaviteran

docker run -it hello-world

docker tag hello-world aconregjaviteran.azurecr.io/hello-world
docker push aconregjaviteran.azurecr.io/hello-world

docker pull aconregjaviteran.azurecr.io/hello-world

https://portal.azure.com/#@educantabria.es/resource/subscriptions/d6f8d01b-d95a-4a59-b85f-21e1638d7d3f/resourceGroups/grJaviTeran/providers/Microsoft.ContainerRegistry/registries/AConRegJaviteran/quickStart