<?php
/* Descrição:
Build Tower
Build Tower by the following given argument:
number of floors (integer and always greater than 0).

Tower block is represented as *

Python: return a list;
JavaScript: returns an Array;
C#: returns a string[];
PHP: returns an array;
C++: returns a vector<string>;
Haskell: returns a [String];
Ruby: returns an Array;
Lua: returns a Table;
Have fun!

for example, a tower of 3 floors looks like below

[
  '  *  ', 
  ' *** ', 
  '*****'
]
and a tower of 6 floors looks like below

[
  '     *     ', 
  '    ***    ', 
  '   *****   ', 
  '  *******  ', 
  ' ********* ', 
  '***********'
]
*/
function tower_builder(int $n): array {
  $arrStr = [];
  $maxItens = ($n * 2) - 1;
  $strBase = str_repeat(' ', $maxItens);
  for($i = $n; $i > 0; $i--){
    $strAsterisco = str_repeat('*', (2 * $i) - 1);
    $arrStr[$i-1] = substr_replace($strBase, $strAsterisco, $n - $i, strlen($strAsterisco));
  }
  return $arrStr;
}