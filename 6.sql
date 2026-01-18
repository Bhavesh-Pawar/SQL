-- Find employees hired after 2020
select * from employees e 
where extract(year from e.hire_date) >= '2020'

-- Key Note 
-- Extract function 