#Program for palindrome !please Input with commandline argument
Param(
    [string]$palindrome_Input
)
try{ 
    #[string]$palindrome_Input = Read-Host "Enter value to check palindrome or not"
    [string]$reverse_Value = ""
    $convert_To_Array = $palindrome_Input.toCharArray()
    for($loop_var = $convert_To_Array.length-1;$loop_var -ge 0;$loop_var--){
        $reverse_Value = $reverse_Value + $convert_To_Array[$loop_var]
	}
    if($palindrome_Input -eq ""){
        Write-Host "You Entered Null !Please give some input ";
    }
    elseif($reverse_Value -eq $palindrome_Input){
	    Write-Host "Entered String is Palindrome"
    }
    else{
        Write-Host "Entered String is not Palindrome"
    }
}
catch{
	Write-Host "Exception In Execution"
}
