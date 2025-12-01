select first_name, last_name, payment_date, amount,
Lag(amount, 1,0)over(partition by c.customer_id order by amount) previous_amount
from customer c
join payment p
on c.customer_id = p.customer_id;
