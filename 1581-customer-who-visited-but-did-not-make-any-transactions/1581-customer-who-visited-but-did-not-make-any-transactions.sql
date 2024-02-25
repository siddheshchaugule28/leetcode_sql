# Write your MySQL query statement below



select customer_id, count(customer_id) as count_no_trans from Visits
where visit_id not in (select t1.visit_id from Visits as t1
                       join Transactions as t2
                       on t1.visit_id = t2.visit_id )
                       group by customer_id
