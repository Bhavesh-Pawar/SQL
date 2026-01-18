-- Find third highest salary
-- Using LIMIT/OFFSET
select distinct e.salary  from employees e 
order by e.salary desc offset 2 limit 1;

-- Using Rank/Dense_Rank window function (Modern Era SQL which can be used to find Nth highest salary)
WITH ranked_salary as (
select e.salary ,dense_rank() over(order by e.salary desc) as salary_rank from employees e 
)

select rs.salary from ranked_salary rs
where rs.salary_rank = 3;