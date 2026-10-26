## q04 What are the five biggest completed orders?
SELECT o.order_id, o.customer_id, o.item, o.amount
FROM orders o
WHERE o.status = 'completed'
ORDER BY o.amount desc, order_id ASC
Limit 5;