# Write your MySQL query statement below
select unique_id,name from Employees as t1
left join EmployeeUNI as t2
ON t1.id = t2.id