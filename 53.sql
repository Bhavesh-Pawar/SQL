-- Display top 3 salaries per department


with top_salaries as (select d.department_name ,e.salary,dense_rank() over(
partition by d.department_name  order by e.salary  desc
) as ranked from employees e 
left join departments d on d.department_id = e.department_id )

select * from top_salaries where ranked <=3;