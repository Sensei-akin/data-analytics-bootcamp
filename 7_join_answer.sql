select * from film;
select * from inventory;
select * from rental;

select f.title, r.rental_date, r.return_date
from inventory i
left join film f
on i.film_id = f.film_id
left join rental r
on i.inventory_id = r.inventory_id;
