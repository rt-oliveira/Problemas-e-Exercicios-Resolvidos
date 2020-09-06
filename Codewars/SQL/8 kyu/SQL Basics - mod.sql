/* Descrição:
Given the following table 'decimals':

** decimals table schema **

id
number1
number2
Return a table with one column (mod) which is the output of number1 modulus number2.
*/

/*  SQL  */
select mod(number1, number2) as mod
from decimals;