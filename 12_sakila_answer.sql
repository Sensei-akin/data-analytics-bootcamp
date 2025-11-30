select a.first_name, a.last_name, count(*) film_count
from film_actor fa
join actor a
on fa.actor_id = a.actor_id
join film f
on f.film_id = fa.film_id
group by a.first_name, a.last_name
order by count(*);