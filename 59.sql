-- Find median salary
SELECT
    PERCENTILE_CONT(0.5) 
    WITHIN GROUP (ORDER BY salary) AS median_salary
FROM employees;

--Key Note 
-- In PostgreSQL we have built in window function 
-- PERCENTILE_CONT(0.5) 
-- WITHIN GROUP BY 