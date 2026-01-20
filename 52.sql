-- Rank employees by salary using DENSE_RANK()
select e.salary , 
rank() over(order by e.salary desc),
dense_rank() over(order by e.salary desc)
from employees e