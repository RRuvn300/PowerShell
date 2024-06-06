$UserFiles = "C:\Users\Administrador\ldifde\JcasasUsers.ldif"

$Users = Import-Csv -Path $UserFiles

foreach ($User in $Users)
{
    $UserName = $User.UserName
    $UserDescription = $User.$UserDescription
    New-ADUser -Name $UserName -UserScope Global -Description $UserDescription -Path "OU=Docents,DC=RSC,DC=itb,DC=cat"
}
