#Program for Checking Year is Leap Year or Not
try
{
    cls
    [int]$year_Input = Read-Host "Enter Year to check leap year or not"
    if($year_Input % 400 -eq 0)
    {
	    Write-Host "Entered year is leap year"
    }
    elseif($year_Input % 100 -eq 0)
    {
	    Write-Host "Entered year is not leap year"
    }
    elseif($year_Input % 4 -eq 0)
    {
	    Write-Host "Entered year is leap year"
    }
    else
    {
	    Write-Host "Entered year is not leap year"
    }
}
catch
{
	Write-Host "`nEXCEPTION : Entered number is not in Integer Format"
}