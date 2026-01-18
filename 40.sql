-- Find employees who are managers

select e.emp_name from employees e 
where e.emp_id  in (
select distinct e2.manager_id from employees e2 where e2.manager_id is not null
)