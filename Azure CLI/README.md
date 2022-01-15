## Basic Azure CLI Commands

Create a resource group
```
az group create --name myResourceGroup --location eastus
```

Create a Linux VM
```
az vm create --resource-group myResourceGroup --location eastus --name MyVM1 --image ubuntults
```

Create a Windows VM
```
az vm create --resource-group myResourceGroup --location eastus --name MyVM2 --image win2016datacenter
```

Start a VM
```
az vm start --resource-group myResourceGroup --name MyVM1
```

Stop a VM
```
az vm stop --resource-group myResourceGroup --name MyVM1
```

Deallocate a VM
```
az vm deallocate --resource-group myResourceGroup --name MyVM1
```

Restart a VM
```
az vm restart --resource-group myResourceGroup --name MyVM1
```

Redeploy a VM
```
az vm redeploy --resource-group myResourceGroup --name MyVM1
```

Delete a VM
```
az vm delete --resource-group myResourceGroup --name MyVM1
```

#### References
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/cli-manage
