#!please pass path along with command line
Param(
    $pathValue
)
try {
    $locationValue = Get-Content -path $pathValue | Out-String
    [array]$charArrayContent = $locationValue.split('.')
    Write-Host "------------Using Splitting Method-----------"
    for($loopVar = $charArrayContent.Length - 2 ; $loopVar -ge 0 ; $loopVar --) {
        if($loopVar -eq 0) {
            Write-Host -NoNewLine "`n"
        }
        Write-Host -NoNewline $charArrayContent[$loopVar]
        Write-Host -NoNewline "."
    }
    Write-Host "`n`n------------Without Using Splitting Method iterating object of file-----------"
    $locationValue1 = Get-Content "C:\Users\hanuman.jat\Desktop\Assignments\PowerShell\Solutions\ShellRead.txt"
    for($loopVar = $locationValue1.Length - 1 ; $loopVar -ge 0 ; $loopVar --) {
        Write-Host $locationValue1[$loopVar]
    }
}
catch {
    Write-Host "Something Went wrong Please Check File"
}