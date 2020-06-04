/* Descrição:

A History Lesson

Soundex is an interesting phonetic algorithm developed nearly 100 years ago for indexing names as they are pronounced in English. The goal is for homophones to be encoded to the same representation so that they can be matched despite minor differences in spelling.

Reference: https://en.wikipedia.org/wiki/Soundex
Preface

I first read about Soundex over 30 years ago. At the time it seemed to me almost like A.I. that you could just type in somebody's name the way it sounded and there was still a pretty good chance it could match the correct person record. That was about the same year as the first "Terminator" movie so it was easy for me to put 2 and 2 together and conclude that Arnie must have had some kind of futuristic Soundex chip in his titanium skull helping him to locate Serah Coner... or was it Sarh Connor... or maybe Sayra Cunnarr...

:-)
Task

In this Kata you will encode strings using a Soundex variation called "American Soundex" using the following steps:

    Save the first letter. Remove all occurrences of h and w except first letter.
    Replace all consonants (include the first letter) with digits as follows:
        b, f, p, v = 1
        c, g, j, k, q, s, x, z = 2
        d, t = 3
        l = 4
        m, n = 5
        r = 6
    Replace all adjacent same digits with one digit.
    Remove all occurrences of a, e, i, o, u, y except first letter.
    If first symbol is a digit replace it with letter saved on step 1.
    Append 3 zeros if result contains less than 3 digits. Remove all except first letter and 3 digits after it

Input

A space separated string of one or more names. E.g.

Sarah Connor
Output

Space separated string of equivalent Soundex codes (the first character of each code must be uppercase). E.g.

S600 C560
*/
import org.apache.commons.lang3.ArrayUtils;

public class Dinglemouse {
  private static String[] vogais = {"a","e","i","o","u","y"};
  
  public static String soundex(final String names) {
    String[] nomes = names.split(" ");
    String resultado = "";
    for(String n: nomes){
      String codSoundex, strTemp;
      codSoundex = String.valueOf(n.charAt(0));
      strTemp = removerHW(n);
      strTemp = substituirCods(strTemp);
      strTemp = removerDigitosIguais(strTemp);
      strTemp = removerVogais(strTemp);
      resultado = resultado + formatCodSoundex(strTemp,codSoundex);
    }
    
    return resultado.trim();
  }
  
  public static String removerHW(String n){
    String strTemp = n.substring(1);
    strTemp = strTemp.replace("h","");
    strTemp = strTemp.replace("w","");
    
    return n.substring(0,1) + strTemp;
  }
  
  public static String substituirCods(String n){
    String temp = n.toLowerCase();
    String [][] codigos = { {"b","f","p","v"},
                            {"c","g","j","k","q","s","x","z"},
                            {"d","t"},
                            {"l"},
                            {"m","n"},
                            {"r"}};
    for (int i=0;i<6;i++){
      for(String letra: codigos[i]){
        temp = temp.replace(letra,String.valueOf(i+1));
      }
    }
    return temp;
  }
  
  public static String removerDigitosIguais(String n){
    StringBuilder sb = new StringBuilder(n);
    for (int i=0;i<(sb.length()-1);){
      if(sb.charAt(i) == sb.charAt(i+1))
        sb.deleteCharAt(i);
      else
        i++;
    }
    return sb.toString();
  }
  
  public static String removerVogais(String n){
    String temp = n.substring(1);
    for(String c: vogais){
      temp = temp.replace(c,"");
    }
    return n.substring(0,1) + temp;
  }
  
  public static String formatCodSoundex(String n,String cod){
    String r = n;

    if (String.valueOf(r.charAt(0)) != cod.toLowerCase())
      r = cod + r.substring(1);
    
    if(r.length() < 4){
      for (int i=r.length();i<4;i=r.length())
        r += "0";
    }
    else{
      r = r.substring(0,4);
    }
    
    return " " + r.toUpperCase();
  }
  
}