## q02 Which orders have no recorded amount?
SELECT o.order_id, o.customer_id, o.item, o.status
FROM orders o
WHERE o.amount Is Null
ORDER BY o.order_id;