# Write your MySQL query statement below
SELECT distinct 
    a.num as ConsecutiveNums 
FROM 
    logs a,
    logs b,
    logs c
WHERE 
    a.id=b.id+1 AND 
    b.id=c.id+1 AND 
    a.num=b.num AND 
    b.num=c.num