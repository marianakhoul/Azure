# Import the Azure PowerShell module
Import-Module -Name Az

#Connect to an Azure Account
Connect-AzAccount

#Define Azure variables for a virtual machine
$vmName = "VMName"
$resourceGroup = "ResourceGroup1"

#Create Azure Credentials
$adminCredentials = Get-Credentials -Message "Enter a username and password for the VM administrator"

#Create a linux VM in Azure
New-AzVm -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredentials -Image UbuntuLTS

## To run command in PowerShell run: .\CreateVMusingPowershell.ps1
