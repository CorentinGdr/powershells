# Connect to Azure with Managed Identity
Connect-AzAccount -Identity

# Get all VMs in a specific Resource Group
$resourceGroupName = "csc-GDR-0"
$vms = Get-AzVM -ResourceGroupName $resourceGroupName

# Stop and deallocate all VMs
foreach ($vm in $vms) {
    Write-Output ("Stopping VM: " + $vm.Name)
    Stop-AzVM -ResourceGroupName $resourceGroupName -Name $vm.Name -Force
}