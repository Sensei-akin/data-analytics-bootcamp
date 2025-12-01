SELECT film_id, title, rental_duration, RANK()
OVER(ORDER BY rental_duration desc) AS rank_row
FROM film;