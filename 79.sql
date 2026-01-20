-- Find employees working on all projects
select * from employees e 
where e.emp_id  in 
(select ep.emp_id  from employee_projects ep 
group by 1 having count(ep.project_id ) = (select count(*) from projects p ))