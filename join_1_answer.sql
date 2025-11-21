
Select f.title, a.first_name, a.last_name
from actor a
join film_actor fa
on a.actor_id = fa.actor_id
join film f
on fa.film_id = f.film_id
where f.title ="Academy Dinosaur";
