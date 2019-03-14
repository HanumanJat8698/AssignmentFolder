try
{
    cls
    $hash_Table = @{}
    do 
        {
            $input1 = (Read-Host "Enter Key : ")
            if ($input1 -eq '')
            {
                break
            }
            $input2 = (Read-Host "Enter Value : ")
            if($input2 -eq '')
            {
                break
            }
            else
            {
                $hash_Table.Add($input1,$input2)
            }

        }
        until ($input1 -eq '' -AND $input2 -eq '')
    if($hash_Table.Count -eq 0)
    {
        Write-Host "HashTable is Empty"
    }
    else
    {
        Write-Host "`n`nOriginal Data : "
        $hash_Table
        Write-Host "`n`nSorting Data According to name : "
        $hash_Table.GetEnumerator() | sort -Property name
        Write-Host "`n`nSorting Data According to Value : "
        $hash_Table.GetEnumerator() | sort -Property value
    }
}
catch
{
    Write-Host "Exception Caugh"
}