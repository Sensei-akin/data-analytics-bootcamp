use Sakila;
select f.title, l.name 
from film f
join language l
on f.language_id = l.language_id;
