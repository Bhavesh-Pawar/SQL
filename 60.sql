-- Use CTE to find highest paid employee

with highest_salary as ( 
 select max(e.salary) as max_salary from employees e 
)

select * from employees e 
where e.salary in (select max_salary from highest_salary);