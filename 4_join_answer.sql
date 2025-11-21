select * from customer;
select * from store;
select * from address;
select * from city;
select c.first_name, c.last_name, ci.city
from customer c
join store s
on c.store_id = s.store_id
join address a
on s.address_id = a.address_id
join city ci 
on a.city_id = ci.city_id;