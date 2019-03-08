param(
[string]$foo1
)
function prog()
{
	[int]$a=$foo1;
	$total=1;
	for($i=1;$i -le $a;$i++)
	{
		$total=$total*$i;	
	}
	write-host('Factorial :'+$total);
}
prog