/* Descrição:
Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.
*/
public class FakeBinary {
    public static String fakeBin(String numberString) {
        String result="";
        for(int i=0;i<numberString.length();i++){
          if(numberString.charAt(i)>='5')
            result+='1';
          else
            result+='0';
        }
        return result;
    }
}
