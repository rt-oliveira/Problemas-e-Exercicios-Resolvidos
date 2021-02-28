<?php
/* Descrição:
	Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. The strings will not be the same length, but they may be empty ( length 0 ).

For example:

shortLongShort("1", "22") // returns "1221"
shortLongShort("22", "1") // returns "1221"
*/

function shortLongShort(string $s1, string $s2): string
{
  if (strlen($s1) > strlen($s2))
    return "$s2$s1$s2";
  else
    return "$s1$s2$s1";
}
?>