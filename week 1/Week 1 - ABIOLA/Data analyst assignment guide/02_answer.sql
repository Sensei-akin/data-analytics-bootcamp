SELECT c.name film_category, COUNT(fc.category_id) AS film_count
FROM category c
JOIN film_category fc
ON c.category_id = fc.category_id
GROUP BY c.name;