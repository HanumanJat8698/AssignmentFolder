#!please pass path along with command line
Param(
    $path_Value
)
try{
    $location_Value = Get-Content -path $path_Value | Out-String
    [array]$charArrayContent = $location_Value.split('.')
    Write-Host "------------Using Splitting Method-----------"
    for($loopVar = $charArrayContent.Length - 2;$loopVar -ge 0;$loopVar--){
        if($loopVar -eq 0){
            Write-Host -NoNewLine "`n"
        }
        Write-Host -NoNewline $charArrayContent[$loopVar]
        Write-Host -NoNewline "."
    }
    Write-Host "`n`n------------Without Using Splitting Method iterating object of file-----------"
    $location_value1 = Get-Content "C:\Users\hanuman.jat\Desktop\Assignments\PowerShell\Solutions\ShellRead.txt"
    for($loopVar = $location_value1.Length - 1;$loopVar -ge 0;$loopVar--){
        Write-Host $location_value1[$loopVar]
    }
}
catch{
    Write-Host "Something Went wrong Please Check File"
}