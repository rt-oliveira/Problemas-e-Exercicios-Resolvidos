/* Descrição:

Your task is to add up letters to one letter.

In SQL, you will be given a table letters, with a string column letter. Return the sum of the letters in a column letter.

Notes:
Letters will always be lowercase.
Letters can overflow (see second to last example of the description)
If no letters are given, the function should return 'z'
Examples:
table(letter: ["a", "b", "c"]) = "f"
table(letter: ["a", "b"]) = "c"
table(letter: ["z"]) = "z"
table(letter: ["z", "a"]) = "a"
table(letter: ["y", "c", "b"]) = "d" -- notice the letters overflowing
table(letter: []) = "z"

Confused? Roll your mouse/tap over here
*/

select case
         when soma is null        then 'z'
         when mod(soma,26) = 0    then 'z'
         else chr(mod(soma,26)::int+ascii('a')-1)
       end as letter
from (
select sum(ascii(letter)-(ascii('a')-1)) as soma
from letters
) kata_letters