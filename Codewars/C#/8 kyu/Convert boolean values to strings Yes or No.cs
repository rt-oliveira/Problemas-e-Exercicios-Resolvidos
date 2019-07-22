//Descrição:
//Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

using System;
using System.Linq;

public static class Kata
{
  public static string boolToWord(bool word)
  {
    if(word)
      return "Yes";
    return "No";
  }
}
