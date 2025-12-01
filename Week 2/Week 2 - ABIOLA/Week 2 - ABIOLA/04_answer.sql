SELECT ca.name AS category_name, COUNT(fc.film_id) AS number_of_film
FROM category ca
JOIN film_category fc
ON ca.category_id = fc.category_id
GROUP BY 1;
