SELECT last_name, COUNT(*) AS occurrences
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;