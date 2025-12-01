SELECT s.store_id, COUNT(i.inventory_id) AS inventory_count
FROM store s
JOIN inventory i
ON s.store_id = i.store_id
GROUP BY 1;