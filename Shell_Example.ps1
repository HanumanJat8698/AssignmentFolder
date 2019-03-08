param(
[int]$foo1
)
function prog()
{
	$a=$foo1;
	$total=1;
	for($i=1;$i -le $a;$i++)
	{
		$total=$total*$i;	
	}
	write-host('Factorial :'+$total);
}
prog