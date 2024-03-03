# Write your MySQL query statement below

SELECT 
    ROUND(100 * AVG(order_date = customer_pref_delivery_date), 2) AS immediate_percentage
FROM 
    Delivery 
JOIN 
    (SELECT 
        customer_id,
        MIN(order_date) AS order_date
    FROM 
        Delivery
    GROUP BY 
        customer_id
    ) a
USING 
    (customer_id, order_date);