#program for searching into hashtable and please give the key you want to search
Param
(
    [hashtable]$hash_Table,
    $Search
)
try
{
    if($hash_Table.Count -eq 0)
    {
        Write-Host "HashTable is Empty"
    }
    else
    {
    
    Write-Host -NoNewLine "`n Keys : "
    Write-Host -NoNewLine $hash_Table.Keys
    Write-Host -NoNewLine "`nValue :"
    Write-Host -NoNewLine $hash_Table[$Search]
    }
}
catch
{
	Write-Host "No Such Value exist"
}