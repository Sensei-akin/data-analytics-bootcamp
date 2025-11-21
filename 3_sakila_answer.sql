select c.first_name, c.last_name, ci.city
from customer c
join address a
on c.address_id = a.address_id
join city ci
on a.city_id = ci.city_id
where ci.city = "London";