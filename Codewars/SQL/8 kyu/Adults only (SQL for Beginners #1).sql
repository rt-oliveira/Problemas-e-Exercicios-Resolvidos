/* Descrição:
In your application, there is a section for adults only. You need to get a list of names and ages of users from the users table, who are 18 years old or older.

users table schema

name
age
NOTE: Your solution should use pure SQL. Ruby is used within the test cases just to validate your answer.
*/

--Your code here
select name, age
from users
where age >= 18;