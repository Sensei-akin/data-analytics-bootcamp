SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS rental_count
FROM customer c
JOIN rental r
ON c.customer_id = r.customer_id
WHERE c.active = 'FALSE'
GROUP BY 1,2;