try
{
    cls
    Write-Host "Enter String Values and Hit Enter when done`n"
    $string_Array = @()
    do 
    {
        $input = (Read-Host "Enter String or hit Enter")
        if ($input -ne '')
        {
            $string_Array += $input
        }
    }
    until ($input -eq '')
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