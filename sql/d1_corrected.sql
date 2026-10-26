-- Which regions have more than 80000 of completed-order revenue, largest first?
SELECT c.region,
       SUM(o.amount) AS sales
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'completed'
GROUP BY c.region
HAVING SUM(o.amount) > 80000
ORDER BY SUM(o.amount) DESC;