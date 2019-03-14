#!please pass path along with command line
Param(
    $pathValue
)
try{
    Write-Host " -------------Using Splitting---------------"
    $locationValue = Get-Content -path $pathValue| Out-String
    [array]$charArrayContent=$locationValue.split('.')
    for($loopVar = 0 ; $loopVar -le $charArrayContent.Length - 2 ; $loopVar ++){
        Write-Host -NoNewline $charArrayContent[$loopVar]
        Write-Host -NoNewline "."
    }
    Write-Host "`n`n--------------------Using Commands--------------"
    foreach($line in Get-Content $pathValue){
        if($line -match $regex){
            Write-Host $line
        }
    }
}
catch{
    Write-Host "Check File"
}
