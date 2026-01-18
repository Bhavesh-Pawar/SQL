-- Display top 5 highest paid employees
select * from employees e 
order by e.salary  desc limit 5;