# Write your MySQL query statement below
select query_name,
  round(avg(rating/position),2)  quality,
  round((sum(if(rating<3,1,0))/ count(rating))*100,2) poor_query_percentage
from queries
where query_name is not null
group by 1
