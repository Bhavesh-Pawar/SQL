-- Show highest salary in each department

select d.department_name ,max(e.salary)  from employees e 
left join departments d on e.department_id = d.department_id
group by d.department_name ;
