# Write your MySQL query statement below
select product_name, sum(unit) as unit
from Products p , Orders o
where p.product_id = o.product_id and order_date >='2020-02-01' and order_date <=  '2020-02-29'
group by p.product_id 
having sum(unit) >= 100