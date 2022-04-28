# Commands for Azure Container Registry (ACR)

### Part of Exam Covered
#### Develop Azure compute solutions (25-30%)
**Implement IaaS solutions**
1. Configure container images for solutions
2. Publish an image to Azure Container Registry
3. Run containers by using Azure Container Instance

### Overview/Notes
You can deploy a VM and run containerized applications on your VM.
Azure Kubernetes Service is the container service for Azure. Web Apps also support containers. There is the container option when creating the web app. Can push code to it from there.

The container instance is the fastest and simplest way to run a container in Azure. They don't scale. Not as complicated as Kubernetes but not as advanced as Kubernetes. Can use this if testing and setting up one instance instead of a whole Kubernetes cluster for a test application.

Create the image, deploy to dev, test, deploy to staging, test and then deploy to production.

Docker is used to create the images.

In visual studio code, need to install docker and docker desktop in order to enable Docker support for your applications. Can now package code and publish to Azure container registry (ACR). Public, Docker container registry, Azure container registry.

The Azure Container Instance (ACI) doesn't have the ability to scale. Really for demonstration, testing etc. Not used for big scale projects.

### Commands for Azure Container Registry and Images
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
