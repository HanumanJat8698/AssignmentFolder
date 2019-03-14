#program for searching into hashtable and please give the key you want to search
Param(
    [hashtable]$hashTable,
    $search
)
try{
    if($hashTable.Count -eq 0){
        Write-Host "HashTable is Empty"
    }
    else{
        Write-Host -NoNewLine "`n Keys : "
        Write-Host -NoNewLine $hashTable.Keys
        Write-Host -NoNewLine "`nValue :"
        Write-Host -NoNewLine $hashTable[$search]
    }
}
catch{
    Write-Host "No Such Value exist"
}