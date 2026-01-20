-- Find cumulative salary department-wise
select d.department_name ,sum(e.salary) over( partition by d.department_name order by e.salary ) from employees e 
left join departments d on e.department_id = d.department_id

-- Key Note
-- SUM(col) OVER( PARTITION BY col2 ORDER BY col )
