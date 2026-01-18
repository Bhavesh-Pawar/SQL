-- Display employees with NULL manager_id

select * from employees e 
where e.manager_id  is null;