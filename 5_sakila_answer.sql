select title, avg(rental_rate)
from film
group by title
having rental_rate> avg(rental_rate)
order by avg(rental_rate);

