# Script on al posar un directori, et diu si existeix o no i el llista.

# Llegeix les dades
$b = Read-Host -Prompt "Introdueix el teu directori" 
$a = test-path $b

# Controla que si posa un espai, surt un error
if ( $b -eq " ")
{
    Write-host "Posa un paràmetre vàlid"
}

# Informa si existeix o no el directori i si sí existeix, el mostra.
elseif ($a)
{
    Write-Host "El directori" $b "sí existeix, i conté:"
    Get-childItem $b
} 
else
{
    Write-Host "El fitxer o directori no existeix"
}
