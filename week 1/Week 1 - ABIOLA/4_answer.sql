SELECT last_name
FROM actor
GROUP BY last_name 
HAVING count(*) = 1;