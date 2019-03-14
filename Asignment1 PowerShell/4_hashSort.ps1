#sorting program of hashtable according to name and according to value
Param(
    $hash_Table
)
try{   
    if($hash_Table.Count -eq 0){
        Write-Host "HashTable is Empty"
    }
    else{
        Write-Host "`n`nOriginal Data : "
        $hash_Table
        Write-Host "`n`nSorting Data According to name : "
        $hash_Table.GetEnumerator() | sort -Property name
        Write-Host "`n`nSorting Data According to Value : "
        $hash_Table.GetEnumerator() | sort -Property value
    }
}
catch{
    Write-Host "Exception Caugh"
}