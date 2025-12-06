# License Audit Script
# Exports all users and their assigned licenses
# Author: Badre Moumane

Connect-MgGraph -Scopes "User.Read.All","Directory.Read.All"

$users = Get-MgUser -All -Property "DisplayName,UserPrincipalName,AssignedLicenses"

$results = foreach ($user in $users) {
    foreach ($lic in $user.AssignedLicenses) {
        [PSCustomObject]@{
            DisplayName        = $user.DisplayName
            UserPrincipalName  = $user.UserPrincipalName
            SkuId              = $lic.SkuId
        }
    }
}

$results | Export-Csv "license-audit.csv" -NoTypeInformation
Write-Host "Report exported: license-audit.csv"
