/* Descrição:
The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

Task :
Given a year, return the century it is in.
*/

select ((yr-1)/100)+1 as century
from years;