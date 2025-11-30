select f.title,  a.first_name, a.last_name
from film_actor fa
join film f
on fa.film_id = f.film_id
join actor a
on fa.actor_id  = a.actor_id
where f.title = "AFICAN EGG";
