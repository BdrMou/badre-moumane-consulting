# Automated Offboarding Script
# Disables user, revokes tokens, removes licenses
# Author: Badre Moumane

param (
    [Parameter(Mandatory=$true)]
    [string]$UserUPN
)

Import-Module AzureAD
Connect-AzureAD

$user = Get-AzureADUser -ObjectId $UserUPN

if ($user) {
    # Disable the account
    Set-AzureADUser -ObjectId $UserUPN -AccountEnabled $false

    # Revoke sessions
    Revoke-AzureADUserAllRefreshToken -ObjectId $UserUPN

    # Remove all licenses
    Set-AzureADUserLicense -ObjectId $UserUPN -AssignedLicenses @{ AddLicenses = @(); RemoveLicenses = $user.AssignedLicenses }

    Write-Host "User offboarding completed for $UserUPN"
} else {
    Write-Host "User not found."
}
