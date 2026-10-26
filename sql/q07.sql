## q07 Which items earn more than 20000 from completed orders?
SELECT o.item, 
Count(o.order_id) AS number_of_orders,
sum(o.amount) As revenue
FROM orders o
where o.status = 'completed' 
group by o.item
Having revenue > 20000
order by revenue desc;