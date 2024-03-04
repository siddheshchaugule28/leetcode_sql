# Write your MySQL query statement below
select max(num) as num from MyNumbers
where num in (SELECT num 
            FROM MyNumbers 
            GROUP BY num 
            HAVING COUNT(*) = 1)