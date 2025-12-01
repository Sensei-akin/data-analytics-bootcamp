select name, title, rental_rate, dense_rank()
over(partition by name order by rental_rate desc) rental_rate_per_category
from film f
join film_category fc
on f.film_id = fc.film_id
join category c
on fc.category_id = c.category_id;