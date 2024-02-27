#Rubén Sánchez || 1.B 

# Llegeix les dades
$b = Read-Host -Prompt "Introdueix el teu fitxer csv" 
$a = Test-Path $b

# Informa si existeix o no el directori i si sí existeix, el mostra.
if ($a)
{
    Write-Host "L'arxiu csv: $b,  sí existeix"
    #Llista els elements i els divideix per espais, després escriu amb les valors corresponents.
    Get-Content $b | ForEach-Object {
        $nom, $OU, $gmail = $_.Split(',')
        Write-Host "Usuari $nom que pertany a la UO $OU amb correu electrònic $gmail"
        #Afageix el contingut demanat al arxiu de text usuaris.txt
        "Usuari $nom que pertany a la UO $OU amb correu electrònic $gmail" | Out-File -Append -FilePath "C:\IMAGEN\usuaris.txt.txt"
    }
}
else
{
    Write-Host "El fitxer csv NO existeix"
}