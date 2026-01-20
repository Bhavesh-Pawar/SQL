--Display department-wise salary percentage 
select d.department_name ,ROund((sum(e.salary) / sum (sum(salary)) over())*100,2) as percent_salary from employees e 
left join departments d on e.department_id = d.department_id
group by 1