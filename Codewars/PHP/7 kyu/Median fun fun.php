<?php
	/* Descrição:

	Description:

The mean (or average) is the most popular measure of central tendency; however it does not behave very well when the data is skewed (i.e. wages distribution). In such cases, it's better to use the median.

Your task for this kata is to find the median of an array consisting of n elements.

You can assume that all inputs are arrays of numbers in integer format. For the empty array your code should return NaN (false in JavaScript/NULL in PHP/nil in Ruby).

Examples:

Input [1, 2, 3, 4] --> Median 2.5

Input [3, 4, 1, 2, 5] --> Median 3
*/
function median($a) {
  if (count($a) === 0)
      return null;
  else{
    $posicaoMediana = round(count($a) / 2.0);
    sort($a);
    if(count($a) % 2 === 0)
      return ($a[$posicaoMediana] + $a[$posicaoMediana - 1]) / 2.0;
    else
      return $a[$posicaoMediana - 1];
  }  
}
?>