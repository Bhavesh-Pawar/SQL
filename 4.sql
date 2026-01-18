--List employees from department 10
select *  from employees e 
left join departments d on d.department_id = e.department_id 
where d.department_id = 10;