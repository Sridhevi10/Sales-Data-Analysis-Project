## q05 What are the headline KPIs for completed orders?
SELECT Count(o.order_id) AS total_orders, 
sum(o.amount) As total_revenue, 
Avg(o.amount) As avg_order_value,
Min(o.amount) As min_order_value,
Max(o.amount) As max_order_value
FROM orders o
WHERE o.status = 'completed';