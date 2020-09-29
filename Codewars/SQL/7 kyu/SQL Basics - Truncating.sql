/* Descrição:

Given the following table 'decimals':

** decimals table schema **

id
number1
number2
Return a table with one column (towardzero) where the values are the result of number1 + number2 truncated towards zero.
*/

select case
         when (number1+number2) > 0 then floor(number1+number2)
         when (number1+number2) < 0 then ceil(number1+number2)
       end as towardzero
from decimals