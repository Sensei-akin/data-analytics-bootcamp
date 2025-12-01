SELECT name, COUNT(c.category_id) AS count_of_category
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
GROUP BY name;