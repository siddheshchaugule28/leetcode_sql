# Write your MySQL query statement below
select t1.contest_id,round((count(*)/(select count(*) from Users))*100,2) as percentage 
from Register t1
join Users t2
on t1.user_id = t2.user_id
group by contest_id 
order by percentage Desc,contest_id 
