#Program for array string sorting
#input in this way abc,efg,ghi.......
Param(
    $stringArray
)
try{
    Write-Host -NoNewline "Before :"
    Write-Host -NoNewline $stringArray 
    for($extLoopVar = 0 ; $extLoopVar -le $stringArray.Length - 1 ; $extLoopVar ++){
        for($intLoopVar = $extLoopVar + 1 ; $intLoopVar -le $stringArray.Length - 1 ; $intLoopVar ++){
            if($stringArray[$extLoopVar].CompareTo($stringArray[$intLoopVar]) -gt 0){
                [string]$swapVar = $stringArray[$extLoopVar]
                $stringArray[$extLoopVar] = $stringArray[$intLoopVar]
                $stringArray[$intLoopVar] = $swapVar
            }
        }
    }
    Write-Host -NoNewline "`nAfter  :"
    Write-Host -NoNewline $stringArray
    Write-Host -NoNewline "`n"
}
catch{
    Write-Host "Invalid Input"
}