## q11 How do completed-order volume, customers and revenue break down by region and month?
Select c.region, 
o.order_month, 
count(o.order_id) As number_of_orders, 
count(distinct c.customer_id) As number_of_customers, 
sum(o.amount) As total_revenue, 
Avg(o.amount) As average_revenue
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
where o.status = 'completed'
group by c.region, o.order_month
order by c.region, o.order_month;
-- INNER JOIN: we report only on orders, and every order has a customer, so no unmatched rows are needed.
-- COUNT(DISTINCT): a customer may order several times in a month; DISTINCT counts each customer once.