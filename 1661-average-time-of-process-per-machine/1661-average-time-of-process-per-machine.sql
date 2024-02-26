# Write your MySQL query statement below

# SELECT a1.machine_id, 
# ROUND(SUM(a2.timestamp - a1.timestamp) / COUNT(*), 3) 
# AS processing_time 
# FROM Activity a1 
# INNER JOIN 
# Activity a2 
# ON a1.machine_id = a2.machine_id
# AND a1.process_id = a2.process_id 
# AND a1.timestamp < a2.timestamp
# GROUP BY a1.machine_id;

# select a1.machine_id, round(avg(a2.timestamp-a1.timestamp), 3) as processing_time 
# from Activity a1
# join Activity a2 
# on a1.machine_id=a2.machine_id 
# and a1.process_id=a2.process_id
# and a1.activity_type='start' 
# and a2.activity_type='end'
# group by a1.machine_id

select 
a.machine_id,
round(
      (select avg(a1.timestamp) from Activity a1 where a1.activity_type = 'end' and a1.machine_id = a.machine_id) - 
      (select avg(a1.timestamp) from Activity a1 where a1.activity_type = 'start' and a1.machine_id = a.machine_id)
,3) as processing_time
from Activity a
group by a.machine_id



