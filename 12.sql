-- Find employees with salary between 40,000 and 80,000

select * from employees e 
where e.salary between 40000 and 80000

--Key note 
-- Between keyword

select * from employees e 
where e.salary >=40000 and e.salary <= 80000