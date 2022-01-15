## PowerShell Script Syntax

PowerShell has many similarities with other programming languages. We can define variables, use loops, write functions, etc.
Variables are declared using $ and assigned a value using =.
```
$loc = "EastUS"
```
Variables can hold objects.
```
$adminCredentials = Get-Credentials
```
```
$loc = "East US"
New-AzResourceGroup -Name "MyResourceGroup" -Location $loc
```

Several loops exist in PowerShell.
Comparison operators are the following: -lt for "less than", -le for "less than or equal", -eq for "equal", -ne for "not equal", etc

```
For ($i = 1; $i -lt 3; $i++)
{
    $i
}
```
When you execute a script, you can pass arguments using the command line.
```
.\setupEnvironment.ps1 -size 5 -location "East US"
```
Inside the script, you need to capture the values into variables.
```
param([string]$location, [int]$size)
```
You can omit the names of the parameters from the command line.
```
.\setupEnvironment.ps1 5 "East US"
```
But then when you capture variables, it depends on order.
```
param([int]$size, [string]$location)
```

## Common PowerShell Commands

Create a simple VM
```
New-AzVM -Name $myVM
```

Create a VM from a custom image
```
New-AzVm -ResourceGroupName $myResourceGroup -Name $myVM ImageName "myImage" -Location $location
```

Create a VM configuration
```
$vm = New-AzVMConfig -VMName $myVM -VMSize "Standard_D1_v1"
```

Add configuration settings
```
$vm = Set-AzVMOperatingSystem -VM $vm -Windows -ComputerName $myVM -Credential $cred -ProvisionVMAgent -EnableAutoUpdate
```



#### References
https://docs.microsoft.com/en-us/learn/modules/automate-azure-tasks-with-powershell/
https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ps-common-ref
