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
    
    Write-Host -NoNewLine "`n Keys : "
    Write-Host -NoNewLine $hash_Table.Keys
    $keyInput = Read-Host "`n`nEnter key to search it's value:"
    Write-Host -NoNewLine "Value :"
    Write-Host -NoNewLine $hash_Table[$keyInput]
    }
}
catch
{
	Write-Host "No Such Value exist"
}