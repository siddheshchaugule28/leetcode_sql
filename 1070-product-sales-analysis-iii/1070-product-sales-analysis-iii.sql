# Write your MySQL query statement below
select product_id,t.year as first_year, quantity, price 
from Sales t
where (product_id,year) in (select product_id,min(t1.year) from Sales as t1 group by product_id)
order by first_year