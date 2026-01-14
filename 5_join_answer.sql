select* from rental;
select r.rental_date, r.return_date, f.title, 
c.first_name, c.last_name
from rental r
join inventory i
on r.Inventory_id = i.inventory_id
join film f
on i.film_id = f.film_id
join customer c
on r.customer_id = c.customer_id;