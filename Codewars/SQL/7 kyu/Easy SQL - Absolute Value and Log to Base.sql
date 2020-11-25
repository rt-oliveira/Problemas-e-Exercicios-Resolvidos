/* Descrição:

Given the following table 'decimals':

** decimals table schema **

id
number1
number2
Return a table with two columns (abs, log) where the values in abs are the absolute values of number1 and the values in log are values from number2 in logarithm to base 64.
*/
select
  abs(number1) as abs,
  log(64, number2) as log
from decimals