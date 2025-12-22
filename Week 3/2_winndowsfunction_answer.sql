select film_id, title, rental_duration,
rank() over(order by rental_duration desc) rank_rental_duration
from film;