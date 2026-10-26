## q10 Which customers have never placed any order?
select c.customer_id, c.first_name, c.last_name, c.region
From customers c
left join orders o ON c.customer_id = o.customer_id
where o.order_id is null
order by c.customer_id;