
 select  f.title,  c.name, c.category_id, count(*)category_count
  
from film_category fc

JOIN category c

on fc.category_id = c.category_id

join film f

on fc.film_id = f.film_id
group by f.title, c.name, c.category_id
order by count(*);

