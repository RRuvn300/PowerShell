$OUPath = "OU=Docents,DC=RSC,DC=itb,DC=cat"

$Users = Get-ADUser -Filter *  -SearchBase $OUPath -Properties *

$header = "FirstName,LastName,DisplayName,Office,Email,Username"

$csvFile = "Usuaris_$((Get-Date).ToString('yyyyMMdd_HHmmss')).csv"

$header | Out-File -FilePath $csvFile -Encoding UTF8 -Append

foreach ($User in $Users)
{
    $Name = $User.Name
    $Email = $User.EmailAddress
    $Username = $User.SamAccountName
    $line = "$Name,$Email,$Username"
    $line | Out-File -FilePath $csvFile -Encoding UTF8 -Append
}

Write-Host "Se generó el archivo CSV: $csvFile"