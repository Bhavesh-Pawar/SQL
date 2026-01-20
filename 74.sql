-- Find department with highest avg salary
with avg_department_salary as (select d.department_name ,dense_rank() over(order by avg(e.salary) desc) as rnk  from employees e 
left join departments d on e.department_id = d.department_id
group by 1)

select department_name from avg_department_salary 
where rnk = 1