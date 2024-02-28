#Obtener la lista de disco

$directorios = Get-ChildItem -Path C:\Users -Directory

foreach ($direcotrio in $directorios)
{
    $ocupacion = Get-ChildItem -Path $directorio.FullName -Recurse | Measure-Object -Property Length -Sum
    $capacidad_bytes = $ocupacion.Sum
    $capacidad_MB = $capacidad_bytes / 1MB

    Write-Host "Directorio: $($directorio.FullName)"
    Write-Host "Ocupación del disco: $($capacidad_MB) MB"
    Write-Host "__________________________________________"
}