/* Descrição:

You will need to create SELECT statement in conjunction with LIKE.

Please list people which have first_name with at least 6 character long

names table schema
id
first_name
last_name
results table schema
first_name
last_name

*/

select first_name, last_name
from names
where first_name like '______%'