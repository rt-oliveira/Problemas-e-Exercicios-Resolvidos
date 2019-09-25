/* Descrição:
Welcome. In this kata, you are asked to square every digit of a number.
For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer
*/

using System;

public class Kata
{
  public static int SquareDigits(int n)
  {
    string num=n.ToString();
    string resultado="";
    foreach(char i in num){
      int temp=i-'0';
      temp*=temp;
      resultado+=temp.ToString();
    }
    return Convert.ToInt32(resultado);
  }
}
