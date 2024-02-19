# Llegeix el path del directori  

$b = Read-Host -Prompt "Introdueix el teu fitxer o directori"
$a = test-path $b

if ( $a -eq "True")
{
    Write-Host "El fitxer o directori sí existeix"
} 
else
{
    Write-Host "El fitxer o directori no existeix"
}
