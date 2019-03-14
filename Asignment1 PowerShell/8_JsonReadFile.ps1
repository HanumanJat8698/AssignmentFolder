#!please pass path along with command line for jason file
Param(
    $pathValue
)
try{
    $fileContent = Get-Content $pathValue
    for($loopVar = 0 ; $loopVar -le $fileContent.Length - 1 ; $loopVar ++){
        Write-Host $fileContent[$loopVar]
    }
}
catch{
    Write-Host "Something Went Wrong or File is not available"
}