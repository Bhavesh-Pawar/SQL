-- Display distinct department IDs from Employees
select distinct e.department_id  from employees e 
where e.department_id is not null;