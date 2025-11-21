SELECT s.first_name, s.last_name, p.amount
FROM staff s
JOIN payment p
ON s.staff_id = p.staff_id;
