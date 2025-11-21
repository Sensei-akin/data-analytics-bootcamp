SELECT f.title, COUNT(r.rental_id) AS rental_count
FROM film f
JOIN inventory i
ON f.film_id = i.film_id
JOIN rental r
ON r.inventory_id = i.inventory_id
GROUP BY 1
ORDER BY rental_count DESC
LIMIT 5;