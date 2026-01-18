-- Count employees per department

select d.department_name , count(e.emp_name )  from employees e 
left join departments d on d.department_id = e.department_id 
group by d.department_name

--Key Note 
-- Group by with d.department_name , we can also use 1 (sequence of column number)

select d.department_name , count(e.emp_name )  from employees e 
left join departments d on d.department_id = e.department_id 
group by 1