#Rubén Sánchez Campnaer || 1.B 

#Comprova si l'arxiu csv existeix

# Llegeix les dades
$b = Read-Host -Prompt "Introdueix el teu fitxer csv" 
$a = test-path $b

# Informa si existeix o no el directori i si sí existeix, el mostra.
if ( $a -eq "True")
{
    Write-Host "El directori" $b "sí existeix:"
    $infcsv = Get-Content $b
    
    foreach ($li in $infcsv)
    {
        $limit = $li -split "."

        $nom = $limit[0].Trim()
        $OU = $limit[1].Trim()
        $gmail = $limit[2].Trim()

        $output = "Usuari $nom que pertany a la UO $OU i correu electrònic $gmail" 
        Write-Host $output
    }
} 

else
{
    Write-Host "El fitxer csv NO existeix"
}

