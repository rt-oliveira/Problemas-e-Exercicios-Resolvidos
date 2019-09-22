/*Descrição:

Return the Nth Even Number

NthEven(1) //=> 0, the first even number is 0
NthEven(3) //=> 4, the 3rd even number is 4 (0, 2, 4)

NthEven(100) //=> 198
NthEven(1298734) //=> 2597466

The input will not be 0.

 */

public class Kata
{
  public static int NthEven(int n)
  {
    return 2*(n-1);
  }
}
