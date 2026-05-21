-- =========================================
-- ROW_NUMBER() QUERIES
-- =========================================

-- 1. Row number based on highest salary

SELECT
emp_name,
salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

-- 2. Row number within department based on salary descending

SELECT
emp_name,
department,
salary,
ROW_NUMBER() OVER(
PARTITION BY department
ORDER BY salary DESC
) AS row_num
FROM employees;

-- 3. Row number based on latest joining date

SELECT
emp_name,
join_date,
ROW_NUMBER() OVER(
ORDER BY join_date DESC
) AS row_num
FROM employees;

-- 4. Row number within department based on earliest joining date

SELECT
emp_name,
department,
join_date,
ROW_NUMBER() OVER(
PARTITION BY department
ORDER BY join_date
) AS row_num
FROM employees;
