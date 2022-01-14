## Virtual Machines 

### Powershell commands

#### Steps
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





