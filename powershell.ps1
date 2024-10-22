# Connect to Azure
Connect-AzAccount

# Define variables
$resourceGroupName = "example-resources"
$storageAccountName = "examplestorageacct"
$location = "West Europe"

# Create a resource groupc
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName "Standard_LRS" `
                     -Kind "StorageV2"

# Output the storage account details
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$storageAccount.Id
$storageAccount.StorageAccountName