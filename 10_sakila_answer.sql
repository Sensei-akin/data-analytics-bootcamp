select s.first_name, s.last_name, count(*) rent, sum(amount) total_revenue
from staff s
join rental r
on s.staff_id = r.staff_id
join payment p
on p.staff_id = s.staff_id
group by s.first_name, s.last_name
order by count(*);