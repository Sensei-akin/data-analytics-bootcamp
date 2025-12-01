WITH ranked_store AS (WITH film_rank AS (SELECT i.store_id, title, COUNT(r.rental_id) AS rental_count
FROM store s
JOIN inventory i
ON s.store_id = i.store_id
JOIN film f
ON f.film_id = i.film_id
JOIN rental r
ON r.inventory_id = i.inventory_id
GROUP BY 1,2)
SELECT *, dense_rank()
OVER(partition by store_id order by rental_count desc) store_film_rank
FROM film_rank)
SELECT *
FROM ranked_store
WHERE store_film_rank = 2;