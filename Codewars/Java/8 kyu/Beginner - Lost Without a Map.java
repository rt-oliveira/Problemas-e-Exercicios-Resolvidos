/* Descrição:
Given an array of integers, return a new array with each value doubled.

For example:

[1, 2, 3] --> [2, 4, 6]

For the beginner, try to use the map method - it comes in very handy quite a lot so is a good one to know.
*/

public class Maps {
  public static int[] map(int[] arr) {
    for(int i=0;i<arr.length;i++){
      arr[i]*=2;
    }
    return arr;
  }
}