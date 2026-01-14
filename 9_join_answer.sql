select * from customer;
select c.first_name, c.last_name,  count(*) rentals
from customer c
join rental r
on c.customer_id = r.customer_id
group by c.first_name, c.last_name
Having  count(*) = false
order by count(*) ;