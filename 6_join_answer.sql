select*  from payment;
select * from staff;
select s.first_name, s.last_name, sum(amount) total_amount_payment
from staff s
join payment p
on s.staff_id = p.staff_id
group by s.first_name, s.last_name
order by sum(amount);