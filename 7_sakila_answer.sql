select f.title, count(*) number_of_times_rented 
from film f
join inventory i
on f.film_id = i.film_id
join rental r
 on i.inventory_id = r.inventory_id
 group by 1
 order by 2 desc
 limit 5;
