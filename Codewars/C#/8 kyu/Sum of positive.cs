/* Descrição:
You get an array of numbers, return the sum of all of the positives ones.
Example [1,-4,7,12] => 1 + 7 + 12 = 20
Note: if there is nothing to sum, the sum is default to 0.
*/
using System;
using System.Linq;

public class Kata
{
  public static int PositiveSum(int[] arr)
  {
    int sum=0;
    // The foreach command will iterate through every element of the array arr
    foreach(int i in arr){
      if(i>=0)
        sum+=i;
    }
    return sum;
  }
}
