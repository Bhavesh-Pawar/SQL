-- Count number of projects per department
select d.department_name ,count(distinct ep.project_id)  from employees e 
left join employee_projects ep on ep.emp_id = e.emp_id 
left join departments d on d.department_id = e.department_id 
group by 1