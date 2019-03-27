#sorting program of hashtable according to name and according to value
Param(
    $hashTable
)
try {   
    if($hashTable.Count -eq 0) {
        Write-Host "HashTable is Empty"
    }
    else {
        Write-Host "`n`nOriginal Data : "
        $hashTable
        Write-Host "`n`nSorting Data According to name : "
        $hashTable.GetEnumerator() | sort -Property name
        Write-Host "`n`nSorting Data According to Value : "
        $hashTable.GetEnumerator() | sort -Property value
    }
}
catch {
    Write-Host "Exception Caught"
}