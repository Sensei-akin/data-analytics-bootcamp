select first_name, last_name, payment_date, amount, lag(amount, 1,0) 
over(partition by c.customer_id order by payment_date) previous_amount
from customer c
join payment p
on c.customer_id = p.customer_id;