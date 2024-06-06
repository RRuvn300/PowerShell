#Rubén Sánchez Campaner | 1.B | Backup

$dirbackup = Read-Host "Posa la carpeta que vols fer la còpia: "
$dirfinal = Read-Host "Posa la carpeta on vols que es guardi la còpia: "

$test1 = Test-Path $dirbackup, $dirfinal

if ($test1)

{
    #Construyo el nombre de mi archivo
    $date = Get-Date -Format yyyyMMdd
    $semifile = "backup_$(Split-Path $dirbackup -Leaf)$date.zip"
    $finalfile = Join-Path $dirfinal $semifile
    #Verifico si ya existe este archivo
    $path_verification = Test-Path $finalfile
    if ($path_verification)
    {
        Write-Host "¡Este archivo ya existe!"
        exit 2
    }
    else
    {
        #Hago la copia
        try {
            Compress-Archive -Path $dirbackup -DestinationPath $finalfile
            Write-Host "Se ha realizado correctamente el backup"
        }
        catch {
            Write-Host "Hubo un problema a la hora de hacer el backup"
        }
    }
    
}
else {
    Write-Host "ERROR: Consulte bien los directorios de origen y destino"
}