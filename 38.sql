-- Find departments with no employees

select d.department_name from departments d 
left join employees e on e.department_id = d.department_id 
where e.emp_name is null
