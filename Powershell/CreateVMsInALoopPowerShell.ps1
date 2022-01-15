# Capture the input parameters in a variable
param([string]$resourceGroup)

# Connect to an Azure Account. If this is done in the Cloud Shell environment, don't need it since already authenticated.
Connect-AzAccount

# Prompt for a username and password for VM's admin and capture the result in a variable
$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."

# Create a loop that executes 3 times
For ($i = 1; $i -le 3; $i++) 
{
  # In the loop body, create a name for each VM and store it in a variable and output it in the console.
  $vmName = "ConferenceDemo" + $i
  Write-Host "Creating VM: " $vmName #used for output in console
  #Create new VM using variables
  New-AzVm -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image UbuntuLTS
}

# to run the script, use the following command: ./ConferenceDailyReset.ps1 ResourceGroupName
# to see if the script ran successfully, look for the VMs using: Get-AzResource -ResourceType Microsoft.Compute/virtualMachines
