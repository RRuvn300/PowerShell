#Rubén Sánchez Campnaer || 1.B 

#Comprova si l'arxiu csv existeix

# Llegeix les dades
$b = Read-Host -Prompt "Introdueix el teu fitxer csv" 
$a = test-path $b

# Informa si existeix o no el directori i si sí existeix, el mostra.
if ( $a -eq "True")
{
    Write-Host "El directori" $b "sí existeix:"
    Get-Content $b | ForEach-Object
    {
        $nom, $OU, $gmail = $_.Split('')
        Write-Host "Usuari $nom que pertany a la UO $OU amb correu electrònic $gmail"
        $output | Out-File -Append -FilePath "usuaris.txt"
    }
}

else
{
    Write-Host "El fitxer csv NO existeix"
}

