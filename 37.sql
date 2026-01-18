-- Display employees who worked more than 100 hours

select e.emp_name from employees e 
left join employee_projects ep on ep.emp_id = e.emp_id 
group by 1 having sum(ep.hours_worked ) > 100 
order by 1