/* Descrição:

Given the information about sales in a store, calculate the total revenue for each day, month, year, and product.

Notes
Order the result by the product_name, year, month, day columns
We're interested only in the product-specific data, so you shouldn't return the total revenue from all sales
Input tables
----------------------------------------
|    Table      |   Column   |  Type   |
|---------------+------------+---------|
| products      | id         | int     |
|               | name       | text    |
|               | price      | numeric |
|---------------+------------+---------|
| sales         | id         | int     |
|               | date       | date    |
|---------------+------------+---------|
| sales_details | id         | int     |
|               | sale_id    | int     |
|               | product_id | int     |
|               | count      | int     |
-----------------------------------------
Output table
--------------------------
|    Column    |  Type   |
|--------------+---------|
| product_name | text    |
| year         | int     |
| month        | int     |
| day          | int     |
| total        | numeric |
--------------------------
Example output
product_name | year | month | day | total
-------------+------+-------+-----+------
 milk        | 2019 | 01    | 01  | 200
 milk        | 2019 | 01    | 02  | 190
 milk        | 2019 | 01    |     | 390
 milk        | 2019 | 02    | 01  | 240
 milk        | 2019 | 02    |     | 240
 milk        | 2019 |       |     | 630
 milk        |      |       |     | 630
 */

SELECT distinct
pr.name as product_name,
cast(date_part('year', s.date) as int) as year,
cast(null as int) as month,
cast(null as int) as day,
sum(sd.count * pr.price) as total
FROM  sales_details sd,
      products pr,
      sales s
where 1=1
and sd.sale_id = s.id
and pr.id      = sd.product_id
group by pr.name, date_part('year', s.date)
--
union
--
SELECT distinct
pr.name as product_name,
cast(date_part('year', s.date) as int) as year,
cast(date_part('month', s.date) as int) as month,
cast(null as int) as day,
sum(sd.count * pr.price) as total
FROM  sales_details sd,
      products pr,
      sales s
where 1=1
and sd.sale_id = s.id
and pr.id      = sd.product_id
group by pr.name, date_part('year', s.date), date_part('month', s.date)
--
union
--
SELECT distinct
pr.name as product_name,
cast(date_part('year', s.date) as int) as year,
cast(date_part('month', s.date) as int) as month,
cast(date_part('day', s.date) as int) as day,
sum(sd.count * pr.price) as total
FROM  sales_details sd,
      products pr,
      sales s
where 1=1
and sd.sale_id = s.id
and pr.id      = sd.product_id
group by pr.name, date_part('year', s.date), date_part('month', s.date), date_part('day', s.date)
--
union
--
SELECT distinct
pr.name as product_name,
cast(null as int) as year,
cast(null as int) as month,
cast(null as int) as day,
sum(sd.count * pr.price) as total
FROM  sales_details sd,
      products pr,
      sales s
where 1=1
and sd.sale_id = s.id
and pr.id      = sd.product_id
group by pr.name
order by 1 asc,2,3 asc,4