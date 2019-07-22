/*Descrição:
In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

Example:

Kata.MakeNegative(1); // return -1
Kata.MakeNegative(-5); // return -5
Kata.MakeNegative(0); // return 0

Notes:

    The number can be negative already, in which case no change is required.
    Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.
*/
using System;

public static class Kata
{
  public static int MakeNegative(int number)
  {
    if(number>0)
      return number*-1;
    return number;
  }
}
