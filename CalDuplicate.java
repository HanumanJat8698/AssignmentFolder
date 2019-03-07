class Cal
{
	
	public static void main(String args[])
	{
		System.out.println("File is modified little bit");
		int c=1;
		while(true)
		{
			System.out.println("2 numbers are 15 and 25:");
			int a=15;
			int b=25;
			
			switch(c)
			{
			case 1:	System.out.println("Addition :"+(a+b));
					break;
			case 2:	System.out.println("Subtraction :"+(a-b));
					break;
			case 3:	System.out.println("Multiplication :"+(a*b));
					break;
			case 4:	System.out.println("Division :"+(a/b));
					break;
			case 5:System.out.println("Exiting..");
					System.exit(0);
			default:System.out.println("Wrong choice");
					break;
			}
			c++;
		}
	}
}