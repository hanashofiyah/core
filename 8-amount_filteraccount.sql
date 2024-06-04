SELECT account.name AS account_name, 
       SUM(transaction.amount) AS total_amount_transfer
FROM account
INNER JOIN transaction ON transaction.account_id = account.account_id
WHERE date_part('MONTH', transaction.transaction_date) = 5
GROUP BY name;
