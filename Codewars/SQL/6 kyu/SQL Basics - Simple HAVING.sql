/* Descrição:
For this challenge you need to create a simple HAVING statement, you want to count how many people have the same age and return the groups with 10 or more people who have that age.

people table schema
id
name
age
return table schema
age
total_people
NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.
*/

select age,
       count(1) as total_people
from people
group by age
having count(1) >= 10;