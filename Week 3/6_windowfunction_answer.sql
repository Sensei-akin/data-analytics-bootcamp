-- Calculate the running total of payments for each customer. Use a CTE to show only
-- customers whose total payments exceed $150. Display customer name and their running total
-- at each payment.
-- Hint: Join tables for customer names, aggregate using window functions, filter with CTE

with T1 as(select c.customer_id, c.first_name, c.last_name, payment_id, p.payment_date, 
sum(p.amount)over (partition by c.customer_id order by p.payment_id, p.payment_date)running_total,
sum(p.amount) over (partition by p.customer_id) total_amount
from customer c 
join payment p
on c.customer_id = p.payment_id)
select *
from T1
having total_amount >= 150
order by first_name, last_name, payment_id;
