select c.first_name, c.last_name, sum(amount) total_amt_spent
from customer c
join payment p
on c.customer_id = p.customer_id
group by c.first_name, c.last_name
order by sum(amount) desc
limit 1;