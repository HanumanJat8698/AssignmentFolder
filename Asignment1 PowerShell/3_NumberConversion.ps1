#!!Please input with Param Block Command Line --  FirstChoice Value\
#FirstChoice =1 if Decimal to Binary
#FirstChoice =2 if Binary to Decimal
Param(
    [string]$choice , [string]$userInput
)
function -ConvertDecimalToBinary($userInput){
    #function for Decimal to Binar
    [int]$decInput = $userInput
    [string]$reverseResult = ""
    while($decInput -ne 0){
        $reverseResult = $reverseResult + [string]($decInput % 2)
        $decInput = [Math]::Floor($decInput / 2)
    }
    [string]$result = ""
    $arrayDecInput = $reverseResult.toCharArray()
    for($loopVar = $arrayDecInput.length - 1 ; $loopVar -ge 0 ; $loopVar --){
        $result = $result + $arrayDecInput[$loopVar]
    }
    Write-Host -NoNewline "Binary :"
    Write-Host -NoNewline $result	
}
function -ConvertBinaryToDecimal($userInput){
    try{
        #function for Binary To Decimal
        [string]$binInput = $userInput
        $arrayConvert = $binInput.toCharArray()
        [int]$mul = 1
        [int]$decResult = 0
        #function to convert string to int array
        [array]$binArray = foreach($number in $arrayConvert){
            try{
                [int]::parse($number)
            }
            catch{
                Write-Host "Exception in Input"
            }
        }
        for($loopVar = $binArray.length - 1 ; $loopVar -ge 0 ; $loopVar --){
            if($binArray[$loopVar] -eq 0 -OR $binArray[$loopVar] -eq 1){
                $decResult = $decResult + ($binArray[$loopVar] * $mul)
                $mul = $mul * 2
            }
            else{
                throw "Exception"
            }
        }
        Write-Host -NoNewline "Decimal :"
        Write-Host -NoNewline $decResult
    }
    catch{
        Write-Host "Invalid Input Enter Binary Number Only"
    }
}
function -EnterFun{
    try{
        [int]$choice = $choice
	    if($choice -eq 1){
		    Write-Host "Decimal to Binary Conversion:"
		    -ConvertDecimalToBinary $userInput
	    }
	    elseif($choice -eq 2){
		    Write-Host "Binary to Decimal Conversion:"
		    -ConvertBinaryToDecimal $userInput
	    }
	    else{
		    Write-Host "Wrong Choice"
	    }
    }
    catch{
        Write-Host "`nInvalid Input"
    }
}
-EnterFun