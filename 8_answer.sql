INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id)
VALUES (
    
    (SELECT i.inventory_id
     FROM inventory i
     JOIN film f ON i.film_id = f.film_id
     WHERE f.title = 'Academy Dinosaur'
       AND i.store_id = 1
     LIMIT 1),
    (SELECT customer_id
     FROM customer
     WHERE first_name = 'MARY'
       AND last_name = 'SMITH'),
    (SELECT staff_id
     FROM staff
     WHERE first_name = 'MIKE'
       AND last_name = 'HILLYER'); 

