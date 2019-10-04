/* Descrição:
Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
The output should be two capital letters with a dot seperating them.

It should look like this:

Sam Harris => S.H
Patrick Feeney => P.F
*/
public class AbbreviateTwoWords {

  public static String abbrevName(String name) {
    String[] nomes=name.split(" ");
    char temp1=Character.toUpperCase(nomes[0].charAt(0));
    char temp2=Character.toUpperCase(nomes[1].charAt(0));
    return String.format("%c.%c",temp1,temp2);
  }
}
