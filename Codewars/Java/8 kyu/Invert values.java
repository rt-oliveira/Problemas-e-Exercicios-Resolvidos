/*Descrição:
Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
invert([]) == []
 */
public class Kata {
  public static int[] invert(int[] array) {
    if(array.length==0)
      return array;
    else{
      int[] result=new int[array.length];
      for(int i=0;i<array.length;i++){
        result[i]=array[i]*-1;
      }
      return result;
    }
  }
}
