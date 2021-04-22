<?php
	/* Descrição:

Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

Examples:
a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) -> "abcdefklmopqwxy"

a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"
*/
function longest($a, $b) {
  $combinado = $a . $b;
  $combinado = array_unique(str_split($combinado, 1));
  sort($combinado);
  $combinado = join($combinado);
  return $combinado;
}
>