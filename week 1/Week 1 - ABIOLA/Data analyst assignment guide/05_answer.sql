SELECT c.first_name, c.last_name, f.title AS film_title, r.rental_date, r.return_date
FROM customer c
JOIN rental r
ON c.customer_id = r.customer_id
JOIN inventory i
ON i.inventory_id = r.inventory_id
JOIN film f
ON f.film_id = i.film_id;