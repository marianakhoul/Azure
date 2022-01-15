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

List VMs
```
az vm list
```

Get information about a VM
```
az vm show --resource-group myResourceGroup --name MyVM1
```

Get usage of VM resources
```
az vm list-usage --location eastus
```

Get all available VM sizes
```
az vm list-sizes --location eastus
```

Add a data disk to a VM
```
az vm disk attach --resource-group myResourceGroup --vm-name MyVM1 --disk myDataDisk --size-gb 128 --new
```

Remove a data disk from a VM
```
az vm disk detach --resource-group myResourceGroup --vm-name MyVM1 --disk myDataDisk
```

Resize a disk
```
az disk update --resource-group myResourceGroup --name myDataDisk --size-gb 256
```

Snapshot a disk
```
az snapshot create --resource-group myResourceGroup --name mySnapshot  --source myDataDisk
```

create image of a VM
```
az image create --resource-group myResourceGroup --source myVM --name myImage
```

create VM from image
```
az vm create --resource-group myResourceGroup --name myVM --image myImage
```



#### References
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/cli-manage
