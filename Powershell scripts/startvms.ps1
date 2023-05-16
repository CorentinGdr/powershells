# Connect to Azure with Managed Identity
Connect-AzAccount -Identity

# Get all VMs in a specific Resource Group
$resourceGroupName = "csc-GDR-0"
$vms = Get-AzVM -ResourceGroupName $resourceGroupName

# Start all VMs
foreach ($vm in $vms) {
    Write-Output ("Starting VM: " + $vm.Name)
    Start-AzVM -ResourceGroupName $resourceGroupName -Name $vm.Name
}