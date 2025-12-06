# Revoke refresh tokens for a user
# Forces sign-out across all devices
# Author: Badre Moumane

param(
    [Parameter(Mandatory=$true)]
    [string]$UserUPN
)

Import-Module AzureAD
Connect-AzureAD

Revoke-AzureADUserAllRefreshToken -ObjectId $UserUPN

Write-Host "Refresh tokens revoked for $UserUPN"
