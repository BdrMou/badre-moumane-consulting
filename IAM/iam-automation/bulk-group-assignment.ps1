# Assign multiple users to groups based on CSV input
# Author: Badre Moumane

Import-Module AzureAD
Connect-AzureAD

# CSV Format:
# UserPrincipalName,GroupName

$data = Import-Csv "group-memberships.csv"

foreach ($row in $data) {
    $user = Get-AzureADUser -ObjectId $row.UserPrincipalName
    $group = Get-AzureADGroup -SearchString $row.GroupName

    if ($user -and $group) {
        Add-AzureADGroupMember -ObjectId $group.ObjectId -RefObjectId $user.ObjectId
        Write-Host "Added $($row.UserPrincipalName) to $($row.GroupName)"
    }
}
