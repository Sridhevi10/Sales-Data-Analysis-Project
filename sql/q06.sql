## q06 How many orders and how much money sit in each status?
SELECT o.status, 
Count(o.order_id) AS number_of_orders,
sum(o.amount) As total_amount
FROM orders o
group by o.status
order by number_of_orders desc;