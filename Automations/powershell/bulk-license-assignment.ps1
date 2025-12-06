# Bulk License Assignment Script
# Assigns Microsoft 365 licenses to users based on CSV input
# Author: Badre Moumane

Import-Module AzureAD

Connect-AzureAD

# CSV Format:
# UserPrincipalName,LicenseSku
$users = Import-Csv "users.csv"

foreach ($user in $users) {
    $upn = $user.UserPrincipalName
    $sku = $user.LicenseSku

    Write-Host "Assigning $sku to $upn"

    $license = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense
    $license.SkuId = (Get-AzureADSubscribedSku | Where-Object {$_.SkuPartNumber -eq $sku}).SkuId

    $licensesToAssign = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses
    $licensesToAssign.AddLicenses = $license
    $licensesToAssign.RemoveLicenses = @()

    Set-AzureADUserLicense -ObjectId $upn -AssignedLicenses $licensesToAssign
}
