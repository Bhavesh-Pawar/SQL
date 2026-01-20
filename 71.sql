-- Find project with maximum hours worked
with high_work as (select ep.project_id , dense_rank() over(order by sum(ep.hours_worked) desc) as rnk
from employee_projects ep 
group by 1)

select * from high_work
where rnk = 1