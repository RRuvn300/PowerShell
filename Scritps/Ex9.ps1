param 
(
    [String[]]$nom_direcotris
)

foreach ($direcotri in $nom_direcotris)
{
    if (Test-Path $directori -PathType Container)
    {
        $ocupacion = Get-ChildItem -LiteralPath $directori -Recurse | Measure-Object -Property Length -Sum
        $capacidad_bytes = $ocupacion.Sum
        $capacidad_MB = $capacidad_bytes / 1MB

        Write-Host "Directorio: $($directori)"
        Write-Host "Ocupación del disco: $($capacidad_MB) MB"
        Write-Host "__________________________________________"
    else 
        {
            Write-Host "El directorio '$directori' no es válido o no existe"
        }
    
    }
    
}