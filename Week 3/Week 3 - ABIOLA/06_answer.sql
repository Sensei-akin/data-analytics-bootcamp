WITH cust_running_total AS (SELECT concat(c.first_name, ' ', c.last_name) AS customer_name, SUM(p.amount)
OVER(ORDER BY amount desc) AS running_total
FROM customer c
JOIN payment p
ON c.customer_id = p.customer_id)
SELECT customer_name, running_total
FROM cust_running_total
WHERE running_total > 150;