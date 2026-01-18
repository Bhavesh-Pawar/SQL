-- 
select e.emp_name ,sum(ep.hours_worked ) as total_hours_worked from employees e 
left join employee_projects ep on ep.emp_id = e.emp_id 
group by 1
order by 1

-- Key NOte 
-- Group BY cluase should come first with Order by clause
