# Commands for Azure Container Registry (ACR)

Log in to a registry
```
docker login myregistry.azurecr.io --username XXX --password-stdin #enter password in terminal
```
Can also do and continue
```
az login
az acr login --name myregistry
```
If you pulled a public image, run it locally.
You also want to create an alias of your image to be able to push it to ACR.
```
docker tag XXXX myregistry.azurecr.io/samtools/samtools:1.0.0
```
Push the image to ACR
```
docker push myregistry.azurecr.io/samtools/samtools:1.0.0
```
Pull the image from ACR
```
docker pull myregistry.azurecr.io/samtools/samtools:1.0.0
```
Remove image from ACR
```
docker rmi myregistry.azurecr.io/samtools/samtools:1.0.0
```
