/* Descrição:
You are given a table of persons which includes their respective age. Your task is to return the list of people, age 30 through 50, using the BETWEEN keyword to retrieve the data.

The schema for the persons table is as follows:

id
name
age
The resulting table should have two columns as follows:

name
age
Order by age, highest to lowest.

Note: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.
*/

select name, age
from persons
where age between 30 and 50
order by age desc