#Program for palindrome !please Input with commandline argument
Param(
    [string]$palindromeInput
)
try{ 
    #[string]$palindromeInput = Read-Host "Enter value to check palindrome or not"
    [string]$reverseValue = ""
    $convertToArray = $palindromeInput.toCharArray()
    for($loopVar = $convertToArray.length-1 ; $loopVar -ge 0 ; $loopVar --){
        $reverseValue = $reverseValue + $convertToArray[$loopVar]
	}
    if($palindromeInput -eq ""){
        Write-Host "You Entered Null !Please give some input ";
    }
    elseif($reverseValue -eq $palindromeInput){
	    Write-Host "Entered String is Palindrome"
    }
    else{
        Write-Host "Entered String is not Palindrome"
    }
}
catch{
	Write-Host "Exception In Execution"
}
