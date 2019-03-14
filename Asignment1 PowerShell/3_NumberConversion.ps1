#!!Please input with Param Block Command Line --  FirstChoice Value\
#FirstChoice =1 if Decimal to Binary
#FirstChoice =2 if Binary to Decimal
Param(
    [string]$choice,[string]$user_Input
)
function dToB($user_Input){
    #function for Decimal to Binar
    [int]$dec_Input = $user_Input
    [string]$reverse_Result = ""
    while($dec_Input -ne 0){
        $reverse_Result = $reverse_Result + [string]($dec_Input % 2)
        $dec_Input = [Math]::Floor($dec_Input / 2)
    }
    [string]$result = ""
    $array_Dec_Input = $reverse_Result.toCharArray()
    for($loop_var = $array_Dec_Input.length - 1;$loop_var -ge 0;$loop_var--){
        $result = $result + $array_Dec_Input[$loop_var]
    }
    Write-Host -NoNewline "Binary :"
    Write-Host -NoNewline $result	
}
function bToD($user_Input){
    try{
        #function for Binary To Decimal
        [string]$bin_Input = $user_Input
        $aray_Convert = $bin_Input.toCharArray()
        [int]$mul = 1
        [int]$dec_Result = 0
        #function to convert string to int array
        [array]$bin_Array = foreach($number in $aray_Convert){
            try{
                [int]::parse($number)
            }
            catch{
                Write-Host "Exception in Input"
            }
        }
        for($loopVar = $bin_Array.length - 1;$loopVar -ge 0;$loopVar--){
            if($bin_Array[$loopVar] -eq 0 -OR $bin_Array[$loopVar] -eq 1){
                $dec_Result = $dec_Result + ($bin_Array[$loopVar] * $mul)
                $mul = $mul * 2
            }
            else{
                throw "Exception"
            }
        }
        Write-Host -NoNewline "Decimal :"
        Write-Host -NoNewline $dec_Result
    }
    catch{
        Write-Host "Invalid Input Enter Binary Number Only"
    }
}
function fun{
    try{
        [int]$choice = $choice
	    if($choice -eq 1){
		    Write-Host "Decimal to Binary Conversion:"
		    dToB $user_Input
	    }
	    elseif($choice -eq 2){
		    Write-Host "Binary to Decimal Conversion:"
		    bToD $user_Input
	    }
	    else{
		    Write-Host "Wrong Choice"
	    }
    }
    catch{
        Write-Host "`nInvalid Input"
    }
}
fun