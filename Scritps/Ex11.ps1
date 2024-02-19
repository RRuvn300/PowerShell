#Rubén Sánchez Campaner | 1.B

#Declaro les dades
$dirdest = Read-Host "Posa la teva carpeta d'origen"
$diror = 'C:\SEGURETAT\Directori Origen'

#Confirmo si existeix el directori
$test = Test-Path $diror
if ($test)
{   
    #Verifico si ja existeix un backup amb el matexi nom
    $fecha = Get-Date -Format "yyyyMMdd"
    $arxiu = "backup_$(Split-Path $diror -Leaf)_$fecha.zip"
    $pathing = Join-Path $dirdest $arxiu

    if (Test-Path $pathing)
    {
        Write-Host "Ja existeix un arxiu amb el mateix nom: $arxiu"
        exit 2
    }
    #Faig la còpia.
    try 
    {
        Compress-Archive -Path $diror -DestinationPath $pathing -Force
        Write-Host "Còpia de seguretat feta!"    
    }
    catch 
    {
        Write-Host "Còpia de seguretat no realitzada, error"    
    }
}
else
{
    Write-Host "El directori:"$diror", no existeix"
    exit 1
}