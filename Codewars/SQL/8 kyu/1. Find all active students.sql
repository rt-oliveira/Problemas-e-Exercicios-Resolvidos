/* Descrição:

Create a simple SELECT query to display student information of all ACTIVE students.

TABLE STRUCTURE:

students
Id	FirstName	LastName	IsActive

Note: IsActive (true or false)
*/

select *
from students
where IsActive = 1
