-- Find employees earning more than department average
with avg_department_salary as (
select e.department_id  as id, avg(e.salary  ) as avg_salary  from employees e 
group by 1
) 


select * from employees e 
left join avg_department_salary ads on ads.id = e.department_id 
where e.salary > ads.avg_salary;


--Key Note 
-- WITH CLAUSE or CTE