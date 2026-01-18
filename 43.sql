-- Display employees who work in multiple projects
select e.emp_name from employees e 
left join employee_projects ep on ep.emp_id = e.emp_id 
group by 1 having  count(ep.project_id ) > 1