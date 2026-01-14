select a.first_name, a.last_name, f.title, count(*)title
from actor a
join film_actor fa
on a.actor_id = fa.actor_id
join film f
on fa.film_id = f.film_id
group by a.first_name, a.last_name, f.title
order by count(*) desc
limit 5;
