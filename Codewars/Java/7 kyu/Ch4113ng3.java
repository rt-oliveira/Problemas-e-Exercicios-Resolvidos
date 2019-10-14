/* Descrição:

Make your strings more nerdy: Replace all 'a'/'A' with 4, 'e'/'E' with 3 and 'l' with 1 e.g. "Fundamentals" --> "Fund4m3nt41s"
*/
class Nerd {
  public static String nerdify(String txt){
    String result="";
    for(int i=0;i<txt.length();i++){
      if(txt.charAt(i)=='a' || txt.charAt(i)=='A')
        result+='4';
      else if(txt.charAt(i)=='e' || txt.charAt(i)=='E')
        result+='3';
      else if(txt.charAt(i)=='l')
        result+='1';
      else
        result+=txt.charAt(i);
    }
    return result;
  }
}