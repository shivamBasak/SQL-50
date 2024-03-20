# Write your MySQL query statement below
select product_name, year, price from Product prd 
inner join Sales sals on sals.product_id=prd.product_id