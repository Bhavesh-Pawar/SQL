--Display employees with odd emp_id 
select e.*  from employees e 
where e.emp_id %2 !=0;