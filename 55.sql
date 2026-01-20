-- Find running total of salaries
select sum(e.salary) over( order by e.salary ) from employees e 