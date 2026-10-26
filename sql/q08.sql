## q08 What does the customer base look like in each region?
Select c.region, 
count(customer_id) As number_of_customers, 
Avg(c.age) As average_age, 
Min(c.age) As min_age, 
Max(c.age) As max_age
From customers c
group by c.region
order by c.region;