-- =========================================
-- ROW_NUMBER() QUERIES
-- =========================================

-- 5. Row number to orders based on order date

SELECT
order_id,
customer_name,
order_date,
ROW_NUMBER() OVER(
ORDER BY order_date
) AS row_num
FROM orders;

-- 6. Row number within city based on amount descending

SELECT
order_id,
city,
amount,
ROW_NUMBER() OVER(
PARTITION BY city
ORDER BY amount DESC
) AS row_num
FROM orders;

-- 7. Row number based on lowest salary

SELECT
emp_name,
salary,
ROW_NUMBER() OVER(
ORDER BY salary
) AS row_num
FROM employees;

-- 8. Row number within department based on name

SELECT
emp_name,
department,
ROW_NUMBER() OVER(
PARTITION BY department
ORDER BY emp_name
) AS row_num
FROM employees;
