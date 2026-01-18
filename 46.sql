-- Show employees hired before their manager
select e.emp_name,e.hire_date  ,e2.emp_name,e2.hire_date   from employees e 
left join employees e2 on e.manager_id = e2.emp_id 
where e.hire_date < e2.hire_date 