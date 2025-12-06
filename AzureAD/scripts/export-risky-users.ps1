# Export Azure AD Risky Users
# Author: Badre Moumane

Import-Module AzureAD
Connect-AzureAD

$riskyUsers = Get-AzureADMSIdentityRiskyUser

$riskyUsers | Select-Object userPrincipalName, riskLevel, riskState, riskDetail |
Export-Csv "risky-users.csv" -NoTypeInformation

Write-Host "Export completed: risky-users.csv"
