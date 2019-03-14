#Program for Checking Year is Leap Year or Not
# !!Please input with Command LIne or Param Block
Param(
    [string]$yearInput
)
try{
    [int]$yearInput = $yearInput
    if($yearInput % 400 -eq 0){
        Write-Host "Entered year is leap year"
    }
    elseif($yearInput % 100 -eq 0){
        Write-Host "Entered year is not leap year"
    }
    elseif($yearInput % 4 -eq 0){
        Write-Host "Entered year is leap year"
    }
    else{
        Write-Host "Entered year is not leap year"
    }
}
catch{
    Write-Host "`nEXCEPTION : Entered number is not in Integer Format"
}