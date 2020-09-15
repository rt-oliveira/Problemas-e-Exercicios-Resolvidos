/* Descrição:
You are the owner of the Grocery Store. All your products are in the database, that you have created after CodeWars SQL excercises!:)

You care about local market, and want to check how many products come from United States of America or Canada.

Please use SELECT statement and IN to filter out other origins.

In the results show how many products are from United States of America and Canada respectively.

Order by number of products, descending.

products table schema
id
name
price
stock
producer
country
results table schema
products
country
*/

select count(1) as products,
       country
from products
where country in ('United States of America', 'Canada')
group by country
order by 1 desc