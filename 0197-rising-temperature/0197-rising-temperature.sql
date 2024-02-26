# Write your MySQL query statement below

SELECT w2.id FROM Weather w1
JOIN Weather w2 
ON DATEDIFF(w2.recordDate, w1.recordDate) = 1
WHERE 
w2.temperature > w1.temperature


# SELECT w2.id FROM Weather w1
# JOIN Weather w2 
# ON w2.recordDate = DATE_ADD(w1.recordDate, INTERVAL 1 DAY)
# WHERE 
# w2.temperature > w1.temperature


# SELECT id FROM (SELECT id,temperature, 
#                 LAG(temperature) OVER (ORDER BY recordDate) AS prev_temperature
#                 FROM Weather
#                ) AS temp_comparison
#         WHERE 
#         temperature > prev_temperature
    
