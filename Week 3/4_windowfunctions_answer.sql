 With T1 as(select title, replacement_cost, rating, row_number()
over(partition by rating) Rownumber
from film)
select title, replacement_cost, rating
from T1
where Rownumber <= 3
order by rating, replacement_cost desc;