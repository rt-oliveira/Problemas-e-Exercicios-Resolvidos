/* Descrição:

In baseball, the batting average is a simple and most common way to measure a hitter's performace. Batting average is calculated by taking all the players hits and dividing it by their number of at_bats, and it is usually displayed as a 3 digit decimal (i.e. 0.300).

Given a yankees table with the following schema,

-player_id STRING

-player_name STRING

-primary_position STRING

-games INTEGER

-at_bats INTEGER

-hits INTEGER

return a table with player_name, games, and batting_average.

We want batting_average to be rounded to the nearest thousandth, since that is how baseball fans are used to seeing it. Format it as text and make sure it has 3 digits to the right of the decimal (pad with zeroes if neccesary).

Next, order our resulting table by batting_average, with the highest average in the first row.

Finally, since batting_average is a rate statistic, a small number of at_bats can change the average dramatically. To correct for this, exclude any player who doesn't have at least 100 at bats.

Expected Output Table

-player_name STRING

-games INTEGER

-batting_average STRING
*/

select player_name, games, round(batting_average, 3)::text as batting_average
from (
select player_name, 
       games,
       (cast(sum(hits)    as numeric) / 
        cast(sum(at_bats) as numeric)) as batting_average
from yankees
group by player_name, games
having sum(at_bats) >= 100
) bat
order by 3 desc