# Write your MySQL query statement below
select t1.product_id, IFNULL(round(sum(units*price)/sum(units),2),0) as average_price from Prices t1
left join UnitsSold t2
on t1.product_id = t2.product_id
and purchase_date between start_date and end_date
group by product_id