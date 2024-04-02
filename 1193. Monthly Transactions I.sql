# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date, '%Y-%m') month,
 country, COUNT(state) trans_count, 
SUM(state="approved") approved_count, SUM(amount) trans_total_amount,
 COALESCE(SUM(CASE WHEN state="approved" THEN amount END), 0) approved_total_amount 
FROM 
Transactions 
GROUP BY 
month, country