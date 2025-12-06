# Remove disabled users older than 90 days
# Author: Badre Moumane

Connect-AzureAD

$threshold = (Get-Date).AddDays(-90)

$disabledUsers = Get-AzureADUser -All $true | Where-Object {
    $_.AccountEnabled -eq $false -and $_.CreationDate -lt $threshold
}

foreach ($user in $disabledUsers) {
    Write-Host "Removing:" $user.UserPrincipalName
    Remove-AzureADUser -ObjectId $user.ObjectId -Force
}
