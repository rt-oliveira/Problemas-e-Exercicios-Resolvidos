<?php
	/* Descrição:

	Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case
*/
function ehBitUm($contador, $item){
  if ($item == 1)
    $contador++;
  return $contador;
}

function countBits($n) 
{
  $str_n = str_split(decbin($n), 1);
   return array_reduce($str_n, "ehBitUm", 0);
}
?>