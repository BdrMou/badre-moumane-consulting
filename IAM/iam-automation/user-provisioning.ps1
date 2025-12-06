# Automated User Provisioning
# Creates users in Azure AD from a CSV file
# Author: Badre Moumane

Import-Module AzureAD
Connect-AzureAD

# CSV Format:
# DisplayName,GivenName,Surname,UserPrincipalName,Department,JobTitle
$users = Import-Csv "new-users.csv"

foreach ($u in $users) {
    New-AzureADUser `
        -DisplayName $u.DisplayName `
        -GivenName $u.GivenName `
        -Surname $u.Surname `
        -UserPrincipalName $u.UserPrincipalName `
        -AccountEnabled $true `
        -Department $u.Department `
        -JobTitle $u.JobTitle `
        -PasswordProfile @{ Password = "TempPassword123!" }
}

Write-Host "Provisioning complete."
