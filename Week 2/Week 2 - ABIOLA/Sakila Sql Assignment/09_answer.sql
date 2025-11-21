SELECT CONCAT(c.first_name, ' ' , c.last_name) AS full_name, SUM(p.amount) AS total_amount_spent
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY 1
ORDER BY total_amount_spent DESC
LIMIT 1;