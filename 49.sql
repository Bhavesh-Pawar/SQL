-- Find duplicate employee names
select e.emp_name from employees e 
group by 1 having count(e.emp_name) = 2