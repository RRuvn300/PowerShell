# Llegeix el path del directori i fa correcció d'errors, sobre tot si ha introduït arguments o no  

if ($args.Count -eq 0) {
    $input = Read-Host -Prompt "Introdueix el teu fitxer o directori"
} elseif ($args.Count -eq 1) {
    $input = $args[0]
} else {
    Write-host "Seqüència no vàlida"
    exit
}

# Eliminar espacios en blanco al principio y al final de la entrada del usuario
$input = $input.Trim()

if ([string]::IsNullOrWhiteSpace($input)) {
    Write-Host "Entrada inválida. No se proporcionó ningún valor."
    exit
}

if (Test-Path $input) {
    Write-Host "El fitxer o directori sí existeix"
} else {
    Write-Host "El fitxer o directori no existeix"
}