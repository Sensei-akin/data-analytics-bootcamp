SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa
ON a.actor_id = fa.actor_id
JOIN film f
ON f.film_id = fa.film_id
GROUP BY 1,2
ORDER BY film_count DESC
LIMIT 5; 