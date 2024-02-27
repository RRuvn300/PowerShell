[int]$NOTA = Read-Host "Nota nombre enter del ú al deu"
if ( $NOTA -lt 0 -or $NOTA -gt 10)
{
    Write-Host "Nota fora de rang."
}
    elseif ($NOTA -lt 3 )
    {
        Write-Host "Tens una D"
    }
    elseif ($NOTA -lt 5 )
    {
        Write-Host "Tens una C-"
    }
    elseif ($NOTA -lt 7 )
    {
        Write-Host "Tens una C+"
    }
    elseif ($NOTA -lt 9 )
    {
        Write-Host "Tens una B"
    }
    else
    {
        Write-Host "Tens una A"    
    }
