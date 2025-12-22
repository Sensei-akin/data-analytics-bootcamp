-- For each store, find the films that are ranked 2nd in terms of rental count. Your query should:
-- • Count how many times each film has been rented per store
-- • Rank films within each store by rental count (handle ties with DENSE_RANK)
-- • Use a CTE to filter only the films with rank = 2
-- • Display store_id, film title, rental count, and rank
-- Hint: Join rental records to inventory to link stores and films. Aggregate the rental counts, apply
-- window function with partitioning, then use CTE to filter.
-- Bonus Tip
-- Remember the three ranking functions

 with T1 as (select s.store_id, title, count(rental_id)rental_count
from inventory i
join store s
on i.store_id = s.store_id
join rental r
on i.inventory_id = r. inventory_id
join film f
on i.film_id = f.film_id
group by s.store_id, title),

T2 as (select store_id, title, rental_count, dense_rank()
 over(partition by store_id order by rental_count desc) denserank
from  T1)
 select * 
 from T2
 where denserank = 2;