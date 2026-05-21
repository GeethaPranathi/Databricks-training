-- =========================================
-- RANK() QUERIES
-- =========================================
-- 13. Rank orders within city based on amount

SELECT
order_id,
city,
amount,
RANK() OVER(
PARTITION BY city
ORDER BY amount DESC
) AS city_rank
FROM orders;

-- 14. Rank employees within department based on lowest salary

SELECT
emp_name,
department,
salary,
RANK() OVER(
PARTITION BY department
ORDER BY salary
) AS dept_salary_rank
FROM employees;

-- 15. Rank employees based on name alphabetically

SELECT
emp_name,
RANK() OVER(
ORDER BY emp_name
) AS name_rank
FROM employees;
