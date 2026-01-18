-- Show employees with salary above company average
select * from employees e 
where e.salary > (
select avg(e.salary ) from employees e 
)