-- =========================================
-- RANK() QUERIES
-- =========================================

-- 9. Rank employees based on highest salary

SELECT
emp_name,
salary,
RANK() OVER(
ORDER BY salary DESC
) AS salary_rank
FROM employees;

-- 10. Rank employees within department based on salary

SELECT
emp_name,
department,
salary,
RANK() OVER(
PARTITION BY department
ORDER BY salary DESC
) AS dept_rank
FROM employees;

-- 11. Rank employees based on latest joining date

SELECT
emp_name,
join_date,
RANK() OVER(
ORDER BY join_date DESC
) AS join_rank
FROM employees;

-- 12. Rank orders based on amount

SELECT
order_id,
amount,
RANK() OVER(
ORDER BY amount DESC
) AS amount_rank
FROM orders;
