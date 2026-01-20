-- Use ROW_NUMBER() to remove duplicates

with dup_name as (
select e.emp_name ,
row_number() over(partition by  e.emp_name  order by e.emp_name ) as rn
from employees e )

select * from dup_name where rn = 1;

--Key Learning:
--Using PARTITION BY on the name column groups identical names into the same window,
--causing duplicate names to receive a sequence number greater than 1.