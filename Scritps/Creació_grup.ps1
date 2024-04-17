$GruposFile = Read-Host "Introduce archivo"

$Grupos = Import-Csv -Path $GruposFile

foreach ($Grupo in $Grupos)
{
    $GrupoName = $Grupo.GroupName
    $GroupDescription = $Grupo.$GroupDescription
    New-ADGroup -Name $GroupName -GroupScope Global -Description $GroupDescription -Path "OU=Grupos,DC=RSC,DC=itb,DC=cat"
}
