# Remove unused licenses from disabled users
# Author: Badre Moumane

Connect-MgGraph -Scopes "User.ReadWrite.All"

$disabled = Get-MgUser -All -Filter "accountEnabled eq false"

foreach ($user in $disabled) {
    if ($user.AssignedLicenses) {
        Write-Host "Removing licenses for disabled user:" $user.UserPrincipalName
        Update-MgUserLicense -UserId $user.Id -AddLicenses @() -RemoveLicenses $user.AssignedLicenses.SkuId
    }
}
