SELECT c.first_name, c.last_name, ci.city
FROM customer c
JOIN address a
ON c.address_id = a.address_id
JOIN city ci
ON ci.city_id = a.city_id
WHERE ci.city = 'London';