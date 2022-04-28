## Virtual Machines 

### Part of Exam Covered
#### Develop Azure compute solutions (25-30%)
##### Implement IaaS solutions
1. Provision virtual machines (VMs)
2. Configure, validate, and deploy ARM templates

### Overview/Notes

#### Create VM in Azure Portal + notes
A server that you can deploy and use.
Public IP are protected. You need to edit for people to be able to connect to it.
VM is a compute option.
Prices differ based on regions, ram, cpu, storage etc.

Stopping a VM doesn't stop the cost since paying for storage of the VM. Stopping will allow for deallocation, stops VM charge per second for resources. To stop paying for the storage for the VM, need to delete the VM.

Almost all resources in Azure go into a resource group. It's a logical grouping of resources where you can lock them down, add permissions on a group level etc. for the resources in it.

Want to chose a region which is geographically close to your company for performance reasons. Also, if the company is based in the US and there are governmenntal restrictions, need to make sure that the region you use is inside the US since the data can't leave the US. Regions also affect the cost. Use the pricing calculator to see differences between the regions. Different regions have different server options (sizing and cpu).

Azure spot instance is a discounted temporary VM for short operations. You can keep the VM until someone comes along and is willing to pay the full price for the services.

Windows machines need username and password for login into the machines. Linux give you a secure SSH key to ssh into the box.

All VMs need a disk. It's where the internal working of the VM are stored (c-drive, d-drive). Virtual hard disk is stored in azure. The recommended way of storing it is by using a premium SSD. If you have requirements to downgrade, you can. **If you find this question on the exam, Premium SSD is the right answer.**

You usually will let Azure control the key. Some high security cases (bitcoin minders, banks) might want to control the key yourself. Need to create KeyVault to store the key.

**Exam question: if you have a particular minimum requirement for operations/per second, can solve it by going up on the disk size as opposed to trying to find the smallest amount of disk**

Your vnet needs to be in the same region as your VM.

Autoshut down is aa nice feature for development machines since you keep paying unless you shut it down. You add the time you want it to be shut down and it will do it automatically.

If you have a high performance cluster, you want your VMs close to each other (proximity placement group).

Tagging allows you to attach metadata to the resources. Tags are custom and you can create your own.

Review and create shows you all the options you've chosen. You can download the arm template which is a json file which contains all the resources and options you've chosen. Can save it in Azure. This is usefull if want to spin up several machines that are identical. 

#### Connect to a VM using RDP + Linux Login
Logging into your machine. There is a connect buttom at the top of your resource (after deployment) or under settings on the left-hand side. Windows allows you to connect using RDP. For Linux, there is the SSH option. 

Got to NSG (network security grooup) for the resource group of the machine. Has tight rules that deny traffic from the internet (inbound security rule). Go into Inbound Security Rule on the left hand side. Click on Add. Basic view, Service:RDP, Add the Port, click Add. It gives you a warning since this is a low security port to have opened.

Windows RDP Login:
1. Allows you to download the RDP file.
2. Shows you the IP address that's open and which port to connect to.
3. Need to make sure your port is open so you can connect. If port is closed, will fail.
4. Putty will try and connect when you open RDP file.
5. Add in the userID and Password that you created when you created the VM
6. Accept the certificate.
7. Remoted into the machine.

Linux Login: **(to be continued)**
1. Want to create a private key in the Azure KeyVault. 
2. Download the private key to your machine.

#### Add a Web Role to a Windows Server
When you remote into the machine, you will see a dashboard. Under configure this local server, you can see option 2 Add roles and features. Chose the web server role (Under Server Roles, keep pressing next to get there) and you can choose features to the web server that you need. A good policy is to not intall things you don't need. Helps with minimum exposure to security issues. Install and close.
Go into internet explorer on the host. For testing of this feature, type in localhost in the search. Will see the default Internet Infromation Services (IIS) installation Message. Want to connect to the machine from outside of the VM. Go back to your local machine and open up the port to be able to connect. Go back to the resource group for the VM then go to the NSG, Inbound security rules, basic view, add HTTP access under Service. Port 80. Take the IP address and put it in your local browser. Should show you the default IIS that we saw in the VM.

#### VMs for Developers
To scale a VM, go under Size, pick the size you want, resize.
For developers, we want to have our code on the VM from our work station. The recommended approach is called Azure DevOps (under Continuous Delivery). Exam doesn't go into DevOps. Just need to know this is the connective glue between code as developer and getting it into the VM.

Costs if not shutdown
1. NSG doesn't have a cost.
2. Disk has a cost. 
3. IP Address has a cost
To delete everything associates with the VM **(if the resource group is only for this VM!!)**, delete the whole resource group.

#### ARM Templates
In the portal, in the Review + Create tab, there is the option to download the ARM Template.
Template contains the resources. Is in .json format. **For the exam, need to be able to read through the template and know what it's doing.** Need to understand that the json template contains 5 sections. Schema is static. ContentVersion is for you to manage if want too put in code repo. Parameters is for the Parameters file. Resources is where resources are getting created. Need to be able to read through resource and know what is happening. **Exam questions: something is missing from the template and you would need to choose from the MCQ options**. Conforms with the desired state configurations which means that resources are created following the template (as they should be). If you want to create multiple VMs. In parameters, need to give each VM own IP, own name, etc. Can add template to a library. Once you've saved it in the library, can come back to it whenever and redeploy multiple times. If you search for Templates in the Azure search in the protal, it will show you all the ARM templates you have saved. It didn't store the parameters file. Need to upload it since previously downloaded it instead of filling in all the blank. Using the ARMDeploy scripts, it can deploy the parameters and json files.

#### Create VM using Powershell
1. Open Powershell
2. Connect your Azure account to Powershell
Connect-AzAccount
It will display a URL to be opened in a web browser and gives you a code for authentication.
3. Get-AzVm will display all the VMs you have running
4. Create a resource group before creating your VM
New-AzResourceGroup -Name NameofResourceGroup -Location EastUS
5. Create a VM with the required parts
New-AzVm -ResourceGroupName NameofResourceGroup -Name aznewVM -Location EastUS -VirtualNetworkName "mynewVNet" -SubnetName "default" -SecurityGroupName "mynewNSG" -PublicIpAddressName "mypublicip" -OpenPorts 80,3389
6. Will ask for administrative username and password
7. Should develop .ps1 files to reuse and store in git repositories to reduce mistakes and creates consistency
8. To stop VM, use Stop-AzVm -Name "aznewVm" -ResourceGroupName "NameofResourceGroup"
9. Verify you want it to stop

**Exam Question: will show you the command and you need to see what is missing from the essential/requirements to have a correct command**

#### Create VM using Azure CLI
1. az login
2. az group list to list all the resource groups, results come back in json format
3. az group create --name myResourceGroup --location eastus (creates resource group)
4. az vm create \
    --resource-group myResourceGroup \
    --name myVM \
    --image Win2019Datacenter \
    --public-ip-sku Standard \
    --admin-username azureuser

