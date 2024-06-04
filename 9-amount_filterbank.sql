SELECT bank.name AS bank_name, 
       SUM(transaction.amount) AS total_amount_transfer
FROM bank
INNER JOIN transaction ON transaction.bank_id = bank.bank_code
WHERE date_part('MONTH', transaction.transaction_date) = 5
GROUP BY name;
