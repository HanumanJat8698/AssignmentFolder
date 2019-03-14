#program for array integer sorting
#!!Please input in format 1,5,4,2,......
Param
(
   $array_Value
)
try
{
    Write-Host -NoNewline "Before :"
    Write-Host -NoNewline $array_Value
    for($extLoopVar = 0;$extLoopVar -le $array_Value.Length - 1;$extLoopVar++)
    {
        for($intLoopVar = $extLoopVar + 1;$intLoopVar -le $array_Value.Length - 1;$intLoopVar++)
        {
            if($array_Value[$extLoopVar] -gt $array_Value[$intLoopVar])
            {
                [int]$swapVar = $array_Value[$extLoopVar]
                $array_Value[$extLoopVar] = $array_Value[$intLoopVar]
                $array_Value[$intLoopVar] = $swapVar
            }
        }
    }
    Write-Host -NoNewline "`nAfter  :"
    Write-Host -NoNewline $array_Value
    Write-Host -NoNewline "`n"
}
catch
{
    Write-Host "`n`nInvalid Input Integer Only"
}