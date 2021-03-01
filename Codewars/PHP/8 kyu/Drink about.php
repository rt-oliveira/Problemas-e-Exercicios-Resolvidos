<?php
	/* Descrição:
	Kids drink toddy.
Teens drink coke.
Young adults drink beer.
Adults drink whisky.
Make a function that receive age, and return what they drink.

Rules:

Children under 14 old.
Teens under 18 old.
Young under 21 old.
Adults have 21 or more.
Examples:

people_with_age_drink(13); // => "drink toddy"
people_with_age_drink(17); // => "drink coke"
people_with_age_drink(18); // => "drink beer"
people_with_age_drink(20); // => "drink beer"
people_with_age_drink(30); // => "drink whisky"
*/
function people_with_age_drink(int $old): string {
  if ($old < 14)
    return 'drink toddy';
  elseif ($old < 18)
    return 'drink coke';
  elseif ($old < 21)
    return 'drink beer';
  else
    return 'drink whisky';
}
?>