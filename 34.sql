-- Display project names with department names
select distinct project_id,d.department_name  from employees e 
left join employee_projects ep on ep.emp_id = e.emp_id 
left join departments d on d.department_id = e.department_id 
where ep.project_id is not null and d.department_id is not null
order by 1