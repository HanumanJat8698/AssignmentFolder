#!please pass path along with command line for jason file
Param(
    $path_Value
)
try{
    $fileContent = Get-Content $path_Value
    for($loopVar = 0;$loopVar -le $fileContent.Length - 1;$loopVar++){
        Write-Host $fileContent[$loopVar]
    }
}
catch{
    Write-Host "Something Went Wrong or File is not available"
}