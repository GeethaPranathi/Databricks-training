-- =========================================
-- RANK() QUERIES
-- =========================================

-- 16. Rank orders within city based on order date

SELECT
order_id,
city,
order_date,
RANK() OVER(
PARTITION BY city
ORDER BY order_date
) AS order_rank
FROM orders;

-- =========================================
-- DENSE_RANK() QUERIES
-- =========================================

-- 17. Dense rank employees based on salary descending

SELECT
emp_name,
salary,
DENSE_RANK() OVER(
ORDER BY salary DESC
) AS dense_salary_rank
FROM employees;

-- 18. Dense rank within department based on salary

SELECT
emp_name,
department,
salary,
DENSE_RANK() OVER(
PARTITION BY department
ORDER BY salary DESC
) AS dense_dept_rank
FROM employees;
