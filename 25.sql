-- Find total salary paid per department

select d.department_name , sum(e.salary  )  from employees e 
left join departments d on d.department_id = e.department_id 
group by 1

-- Key Note 
-- why used 1? -----> Check in 24.sql
