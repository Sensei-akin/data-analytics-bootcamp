SELECT name, f.title, f.rental_rate, DENSE_RANK()
OVER(PARTITION BY name ORDER BY rental_rate desc) AS dense_rank_row
FROM film f
JOIN film_category fc
ON f.film_id = fc.film_id
JOIN category c
ON fc.category_id = c.category_id;