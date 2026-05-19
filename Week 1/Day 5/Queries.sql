-- 1. ROW_NUMBER by salary
SELECT employee_name, salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

-- 2. RANK by salary
SELECT employee_name, salary,
RANK() OVER(ORDER BY salary DESC) AS rank_num
FROM employees;

-- 3. DENSE_RANK by salary
SELECT employee_name, salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- 4. Top 3 highest paid employees
SELECT *
FROM (
    SELECT employee_name, salary,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
    FROM employees
) t
WHERE rn <= 3;

-- 5. Rank employees within department
SELECT employee_name, department, salary,
RANK() OVER(
PARTITION BY department
ORDER BY salary DESC
) AS dept_rank
FROM employees;

-- 6. Highest salary in each department
SELECT employee_name, department, salary,
MAX(salary) OVER(
PARTITION BY department
) AS highest_salary
FROM employees;

-- 7. Running total of orders
SELECT order_id, order_date, total_amount,
SUM(total_amount) OVER(
ORDER BY order_date
) AS running_total
FROM orders;

-- 8. Cumulative sales per employee
SELECT employee_id, order_date, total_amount,
SUM(total_amount) OVER(
PARTITION BY employee_id
ORDER BY order_date
) AS cumulative_sales
FROM orders;

-- 9. Previous order amount using LAG
SELECT customer_id, order_date, total_amount,
LAG(total_amount) OVER(
PARTITION BY customer_id
ORDER BY order_date
) AS previous_order
FROM orders;

-- 10. Next order amount using LEAD
SELECT customer_id, order_date, total_amount,
LEAD(total_amount) OVER(
PARTITION BY customer_id
ORDER BY order_date
) AS next_order
FROM orders;

-- 11. Difference between current and previous order
SELECT customer_id, order_date, total_amount,
total_amount -
LAG(total_amount) OVER(
PARTITION BY customer_id
ORDER BY order_date
) AS difference_amount
FROM orders;

-- 12. Moving average of last 3 orders
SELECT order_id, order_date, total_amount,
AVG(total_amount) OVER(
ORDER BY order_date
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
) AS moving_avg
FROM orders;

-- 13. Salary quartiles using NTILE
SELECT employee_name, salary,
NTILE(4) OVER(
ORDER BY salary DESC
) AS quartile
FROM employees;

-- 14. First order by each customer
SELECT *
FROM (
    SELECT customer_id,
           order_id,
           order_date,
           ROW_NUMBER() OVER(
           PARTITION BY customer_id
           ORDER BY order_date
           ) AS rn
    FROM orders
) t
WHERE rn = 1;

-- 15. Latest order by each customer
SELECT *
FROM (
    SELECT customer_id,
           order_id,
           order_date,
           ROW_NUMBER() OVER(
           PARTITION BY customer_id
           ORDER BY order_date DESC
           ) AS rn
    FROM orders
) t
WHERE rn = 1;

-- 16. Salary with department average
SELECT employee_name, department, salary,
AVG(salary) OVER(
PARTITION BY department
) AS dept_avg
FROM employees;

-- 17. Employees earning above department average
SELECT *
FROM (
    SELECT employee_name,
           department,
           salary,
           AVG(salary) OVER(
           PARTITION BY department
           ) AS dept_avg
    FROM employees
) t
WHERE salary > dept_avg;

-- 18. Department payroll
SELECT employee_name, department, salary,
SUM(salary) OVER(
PARTITION BY department
) AS payroll
FROM employees;

-- 19. Salary percentage contribution
SELECT employee_name, department, salary,
ROUND(
salary * 100.0 /
SUM(salary) OVER(
PARTITION BY department
), 2
) AS contribution_percent
FROM employees;

-- 20. Total employees count
SELECT employee_name,
COUNT(*) OVER() AS total_employees
FROM employees;

-- 21. CTE total sales per employee
WITH sales_cte AS (
    SELECT employee_id,
           SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY employee_id
)
SELECT * FROM sales_cte;

-- 22. Employees with sales above company average
WITH sales_cte AS (
    SELECT employee_id,
           SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY employee_id
)
SELECT *
FROM sales_cte
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM sales_cte
);

-- 23. Customer spending rankings
WITH customer_spending AS (
    SELECT customer_id,
           SUM(total_amount) AS total_spending
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id,
       total_spending,
       RANK() OVER(
       ORDER BY total_spending DESC
       ) AS spending_rank
FROM customer_spending;

-- 24. Recursive CTE numbers 1 to 10
WITH RECURSIVE nums AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM nums
    WHERE n < 10
)
SELECT * FROM nums;

-- 25. Orders above average amount
WITH avg_orders AS (
    SELECT *
    FROM orders
    WHERE total_amount >
    (
        SELECT AVG(total_amount)
        FROM orders
    )
)
SELECT * FROM avg_orders;

-- 26. Rank customers by spending
WITH customer_totals AS (
    SELECT customer_id,
           SUM(total_amount) AS total_spending
    FROM orders
    GROUP BY customer_id
)
SELECT customer_id,
       total_spending,
       RANK() OVER(
       ORDER BY total_spending DESC
       ) AS rank_num
FROM customer_totals;

-- 27. Second highest salary in each department
SELECT *
FROM (
    SELECT employee_name,
           department,
           salary,
           DENSE_RANK() OVER(
           PARTITION BY department
           ORDER BY salary DESC
           ) AS rnk
    FROM employees
) t
WHERE rnk = 2;

-- 28. Difference from department max salary
SELECT employee_name,
       department,
       salary,
       MAX(salary) OVER(
       PARTITION BY department
       ) - salary AS salary_gap
FROM employees;

-- 29. Top-performing employee by department
WITH employee_sales AS (
    SELECT
        e.employee_id,
        e.employee_name,
        e.department,
        SUM(o.total_amount) AS total_sales
    FROM employees e
    LEFT JOIN orders o
    ON e.employee_id = o.employee_id
    GROUP BY e.employee_id,
             e.employee_name,
             e.department
)
SELECT *
FROM (
    SELECT *,
           RANK() OVER(
           PARTITION BY department
           ORDER BY total_sales DESC
           ) AS rnk
    FROM employee_sales
) t
WHERE rnk = 1;
