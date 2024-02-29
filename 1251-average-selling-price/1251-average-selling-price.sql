# Write your MySQL query statement below
# select t1.product_id, IFNULL (round(sum(price*units)/sum(units),2),0) as average_price from Prices t1
# left join UnitsSold t2
# on t1.product_id = t2.product_id
# where purchase_date between start_date and end_date
# group by t1.product_id


SELECT p.product_id, IFNULL(ROUND(SUM(units*price)/SUM(units),2),0) AS average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND
u.purchase_date BETWEEN start_date AND end_date
group by product_id