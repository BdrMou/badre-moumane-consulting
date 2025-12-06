# Risky Sign-ins Report
# Requires Microsoft Graph SDK
# Author: Badre Moumane

Connect-MgGraph -Scopes "IdentityRiskyUser.Read.All","AuditLog.Read.All"

$signins = Get-MgAuditLogSignIn -Filter "riskLevelAggregated ne 'none'" -All

$signins | Select-Object userDisplayName, userPrincipalName, riskLevelAggregated, riskDetail, ipAddress, createdDateTime |
Export-Csv "risky-signins.csv" -NoTypeInformation

Write-Host "Risky sign-ins exported: risky-signins.csv"
