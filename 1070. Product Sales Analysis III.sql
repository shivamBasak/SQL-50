# Write your MySQL query statement below
with a as 
(select product_id,year,quantity,price, rank() over(partition by product_id order by year) as v from sales)

select product_id,year as first_year, quantity,price from a
where v = 1