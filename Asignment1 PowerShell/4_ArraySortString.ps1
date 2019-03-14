#Program for array string sorting
#input in this way abc,efg,ghi.......
Param
(
    $string_Array
)
try
{
    Write-Host -NoNewline "Before :"
    Write-Host -NoNewline $string_Array 
    for($extLoopVar = 0;$extLoopVar -le $string_Array.Length - 1;$extLoopVar++)
    {
        for($intLoopVar = $extLoopVar + 1;$intLoopVar -le $string_Array.Length - 1;$intLoopVar++)
        {
            if($string_Array[$extLoopVar].CompareTo($string_Array[$intLoopVar]) -gt 0)
            {
                [string]$swapVar = $string_Array[$extLoopVar]
                $string_Array[$extLoopVar] = $string_Array[$intLoopVar]
                $string_Array[$intLoopVar] = $swapVar
            }
        }
    }
    Write-Host -NoNewline "`nAfter  :"
    Write-Host -NoNewline $string_Array
    Write-Host -NoNewline "`n"
}
catch
{
    Write-Host "Invalid Input"
}