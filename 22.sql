-- Find employees working in ‘IT’ department

select e.emp_name ,d.department_name  from employees e 
left join departments d on d.department_id = e.department_id 
where d.department_name  = 'IT'