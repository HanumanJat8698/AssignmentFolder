try
{
    cls
    Write-Host " -------------Using Splitting---------------"
    $location_Value = Get-Content -path "C:\Users\hanuman.jat\Desktop\Assignments\PowerShell\Solutions\ShellRead.txt" | Out-String
    [array]$charArrayContent=$location_Value.split('.')
    for($loopVar = 0;$loopVar -le $charArrayContent.Length - 2;$loopVar++)
    {
        Write-Host -NoNewline $charArrayContent[$loopVar]
        Write-Host -NoNewline "."
    }

    Write-Host "`n`n--------------------Using Commands--------------"
    foreach($line in Get-Content "C:\Users\hanuman.jat\Desktop\Assignments\PowerShell\Solutions\ShellRead.txt")
    {
        if($line -match $regex)
        {
            Write-Host $line
        }
    }
}
catch
{
    Write-Host "Check File"
}
