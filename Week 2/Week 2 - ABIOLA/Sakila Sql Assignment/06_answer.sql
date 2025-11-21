SELECT s.store_id, SUM(p.amount) AS total_revenue
FROM store s
JOIN customer c
ON s.store_id = c.store_id
JOIN payment p
ON p.customer_id = c.customer_id
GROUP BY 1;