[array]$a = 7,6,5,8;
Write-Host $a
for($loopVar = 0;$loopVar -lt $a.length ; $loopVar++)
{
    Write-Host $a[$loopVar]
}