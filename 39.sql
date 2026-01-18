-- Display employee and their manager name

select e.emp_name,e2.emp_name as manager_name from employees e 
left join employees e2 on e.manager_id  = e2.emp_id 
order by manager_name