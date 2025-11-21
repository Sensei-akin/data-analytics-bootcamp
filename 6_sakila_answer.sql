select s.store_id, sum(amount) total_revenue
from staff st
join payment p
on st.staff_id = p.staff_id
join store s
on st.staff_id = s.manager_staff_id
group by 1
order by 2;