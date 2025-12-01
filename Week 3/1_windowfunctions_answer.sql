select payment_id, customer_id, amount,
row_number() over(order by amount desc) rownumber
from payment;