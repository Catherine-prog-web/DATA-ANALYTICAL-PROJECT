-- The finance team wants to analyse how often customers transact to segment them(eg,frequent vs occasional user)

WITH transaction_frequency AS (
SELECT
customer_id,
EXTRACT(YEAR FROM
transaction_date) AS year,
EXTRACT(MONTH FROM
transaction_date) AS month,
COUNT(*) AS transaction_count
FROM
transactions
GROUP BY
customer_id,
EXTRACT(YEAR FROM
transaction_date),
EXTRACT(MONTH FROM
transaction_date)
),
average_frequency AS (
SELECT
customer_id,
AVG(transaction_count) AS
avg_transactions_per_month
FROM
transaction_frequency
GROUP BY
customer_id
)
SELECT
customer_id,
avg-transactions_per_month,
CASE
WHEN
avg_transactions_per_month BETWEEN 3 AND 9 THEN 'medium frequency'
ELSE 'low frequency'
END AS frequency_category
FROM
average_frequency
ORDER BY
avg_transaction_per_month DESC;

