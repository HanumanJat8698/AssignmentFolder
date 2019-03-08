param(
[string]$foo1
)
function prog()
{
	$a=5;
	$total=1;
	for($i=1;$i -le $a;$i++)
	{
		$total=$total*$i;	
	}
	write-host('Factorial :'+$total);
	write-host($foo1);
}
prog