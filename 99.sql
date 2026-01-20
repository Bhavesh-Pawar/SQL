-- Find employees contributing to multiple departments
select e.emp_name , count(d.department_name ) from employees e 
left join departments d on d.department_id = e.department_id 
group by 1;