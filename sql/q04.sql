## q04 Which North or West customers aged between 25 and 40 form the target segment?
Select c.customer_id, c.first_name, c.last_name, c.region, c.age
From customers c
where c.region IN ('North' , 'West') and c.age between 25 and 40
order by c.age ASC, c.customer_id ASC;	
