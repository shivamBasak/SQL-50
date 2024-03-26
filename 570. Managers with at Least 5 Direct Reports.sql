# Write your MySQL query statement below
select e1.Name
from Employee e1
join(
    select ManagerId
    from Employee
    group by ManagerId
    having count(ManagerId)
) e2
on e1.Id=e2.ManagerId;