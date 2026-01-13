select c.name category_name, count(*) number_of_films
from film f
join film_category fc
on f.film_id = fc.film_id
join category c
on c.category_id = fc.category_id
group by 1
order by 2;