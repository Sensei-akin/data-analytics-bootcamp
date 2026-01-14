select s.store_id, count(*) inventory_count
from inventory i
join store s
on i.store_id = s.store_id
group by 1
order by 2;

