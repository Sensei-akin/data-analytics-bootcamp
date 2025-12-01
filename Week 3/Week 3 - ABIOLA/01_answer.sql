SELECT payment_id, customer_id, amount, ROW_NUMBER()
OVER(ORDER BY amount desc) AS rownumber
FROM payment;