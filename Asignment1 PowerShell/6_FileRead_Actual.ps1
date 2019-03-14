#!please pass path along with command line
Param
(
    $path_Value
)
try
{
    Write-Host " -------------Using Splitting---------------"
    #$path_Value= Read-Host "Enter Path od File : "
    $location_Value = Get-Content -path $path_Value| Out-String
    [array]$charArrayContent=$location_Value.split('.')
    for($loopVar = 0;$loopVar -le $charArrayContent.Length - 2;$loopVar++)
    {
        Write-Host -NoNewline $charArrayContent[$loopVar]
        Write-Host -NoNewline "."
    }

    Write-Host "`n`n--------------------Using Commands--------------"
    foreach($line in Get-Content $path_Value)
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
