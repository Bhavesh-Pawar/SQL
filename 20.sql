-- Display employee names with salary + 10% bonus

select e.emp_name ,e.salary as old_salary , e.salary *1.1 as new_salary from employees e 