# Write your MySQL query statement below
select ifnull(max(z.num), null) as num
from (select num 
      from mynumbers
      group by num
      having count(num) = 1) as z


    
