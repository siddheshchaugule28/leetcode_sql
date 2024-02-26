# Write your MySQL query statement below
select t1.name, bonus from Employee t1
left join Bonus t2
on t1.empId = t2.empId
where bonus < 1000 or bonus is null