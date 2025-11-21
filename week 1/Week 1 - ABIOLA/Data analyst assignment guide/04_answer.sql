SELECT c.first_name, c.last_name, ci.city AS store_city
FROM customer c
JOIN  store s
ON c.store_id = s.store_id
JOIN address a
ON a.address_id = s.address_id
JOIN city ci
ON ci.city_id = a.city_id;