/* Descrição:
Write function avg which calculates average of numbers in given list.
*/
public class Kata{
  public static double find_average(int[] array){
    double soma=0;
    for(int i:array){
      soma+=i;
    }
    return soma/array.length;
  }
}
