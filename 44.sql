-- Find department with highest total salary

with ranked_department_salary as (select d.department_name , 
dense_rank() over(order by sum(e.salary) desc) as salary_rank from employees e 
left join departments d on d.department_id = e.department_id 
group by 1)

select department_name from ranked_department_salary
where salary_rank = 1