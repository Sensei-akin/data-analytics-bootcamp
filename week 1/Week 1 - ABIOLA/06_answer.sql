SELECT a.actor_id, a.first_name, a.last_name, COUNT(f_actor.film_id) AS film_count
FROM actor a
JOIN film_actor f_actor ON a.actor_id = f_actor.actor_id
GROUP BY a.actor_id
ORDER BY film_count DESC
LIMIT 1;