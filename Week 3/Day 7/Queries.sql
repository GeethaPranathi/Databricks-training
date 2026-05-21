-- =========================================
-- DENSE_RANK() QUERIES
-- =========================================
-- 22. Dense rank employees based on lowest salary

SELECT
emp_name,
salary,
DENSE_RANK() OVER(
ORDER BY salary
) AS dense_low_salary_rank
FROM employees;

-- 23. Dense rank within department based on joining date

SELECT
emp_name,
department,
join_date,
DENSE_RANK() OVER(
PARTITION BY department
ORDER BY join_date
) AS dense_join_rank
FROM employees;

-- 24. Dense rank orders based on order date

SELECT
order_id,
order_date,
DENSE_RANK() OVER(
ORDER BY order_date
) AS dense_order_rank
FROM orders;
