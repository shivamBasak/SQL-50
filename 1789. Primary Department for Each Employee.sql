# Write your MySQL query statement below
SELECT emp.employee_id, emp.department_id
FROM employee emp
JOIN
(SELECT employee_id, COUNT(department_id) AS cnt
FROM employee
GROUP BY employee_id) AS fd
ON emp.employee_id=fd.employee_id
WHERE CASE WHEN fd.cnt>1 THEN (SELECT emp.department_id WHERE emp.primary_flag='Y')
        ELSE department_id
        END;