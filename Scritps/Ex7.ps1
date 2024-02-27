[int]$NOTA = Read-Host "Nota nombre enter del ú al deu"

switch ($NOTA) 
{
    { $_ -lt 0 -or $_ -gt 10 }
    {
        Write-Host "Nota fora de rang"
        break
    }
    { $_ -lt 3 }
    {
        Write-Host "Tens una D"
        break
    }
    { $_ -lt 5 }
    {
        Write-Host "Tens una C-"
        break
    }
    { $_ -lt 7 }
    {
        Write-Host "Tens una C+"
        break
    }
    { $_ -lt 9 }
    {
        Write-Host "Tens una B"
        break
    }
    default 
    {
        Write-Host "Tens una A"
        break
    }
}
