try
{
    $fileContent = Get-Content "C:\Users\hanuman.jat\Desktop\Assignments\PowerShell\Solutions\File.json"
    for($loopVar = 0;$loopVar -le $fileContent.Length - 1;$loopVar++)
    {
        Write-Host $fileContent[$loopVar]
    }
}
catch
{
    Write-Host "Something Went Wrong or File is not available"
}