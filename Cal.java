import java.util.*;
class Cal
{
	
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		while(true)
		{
			System.out.println("Enter 2 numbers");
			int a=sc.nextInt();
			int b=sc.nextInt();
			System.out.println("Enter choice \n 1.ad\n2.sub\n3.mul\n4.div\n");
			int c=sc.nextInt();
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
		}
	}
}