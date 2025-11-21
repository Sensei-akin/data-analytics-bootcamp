SELECT CONCAT(first_name,' ', last_name) AS staff_name, COUNT(r.rental_id) AS rental_count, SUM(p.amount) AS total_revenue
FROM staff s
JOIN rental r
ON s.staff_id = r.staff_id
JOIN payment p
ON p.rental_id = r.rental_id
GROUP BY 1;
