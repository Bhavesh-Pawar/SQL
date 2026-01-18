-- Display departments with more than 2 employees
select d.department_name  from employees e 
left join departments d on d.department_id = e.department_id 
group by 1 having count(*) > 2
