#program for array integer sorting
#!!Please input in format 1,5,4,2,......
Param(
    $arrayValue
)
try {
    Write-Host -NoNewline "Before :"
    Write-Host -NoNewline $arrayValue
    for($extLoopVar = 0 ; $extLoopVar -le $arrayValue.Length - 1 ; $extLoopVar ++) {
        for($intLoopVar = $extLoopVar + 1 ; $intLoopVar -le $arrayValue.Length - 1 ; $intLoopVar ++) {
            if($arrayValue[$extLoopVar] -gt $arrayValue[$intLoopVar]) {
                [int]$swapVar = $arrayValue[$extLoopVar]
                $arrayValue[$extLoopVar] = $arrayValue[$intLoopVar]
                $arrayValue[$intLoopVar] = $swapVar
            }
        }
    }
    Write-Host -NoNewline "`nAfter  :"
    Write-Host -NoNewline $arrayValue
    Write-Host -NoNewline "`n"
}
catch {
    Write-Host "`n`nInvalid Input Integer Only"
}