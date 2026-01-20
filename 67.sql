-- Get employees hired in last 6 months
select * from employees e 
where e.hire_date > now() - interval '6 month'