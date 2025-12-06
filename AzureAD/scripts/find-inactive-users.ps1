# Find inactive Azure AD accounts (90 days)
# Author: Badre Moumane

Import-Module AzureAD
Connect-AzureAD

$users = Get-AzureADUser -All $true
$inactive = @()

foreach ($user in $users) {
    $lastLogin = (Get-AzureADAuditSignInLogs -Top 1 -Filter "userPrincipalName eq '$($user.UserPrincipalName)'").createdDateTime
  
    if (!$lastLogin -or $lastLogin -lt (Get-Date).AddDays(-90)) {
        $inactive += $user
    }
}

$inactive | Select-Object DisplayName, UserPrincipalName |
Export-Csv "inactive-users.csv" -NoTypeInformation

Write-Host "Inactive users exported."
