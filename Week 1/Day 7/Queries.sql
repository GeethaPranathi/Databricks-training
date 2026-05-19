-- =====================================================
-- 21. CTE total sales per employee
-- =====================================================

WITH sales_cte AS (
    SELECT employee_id,
           SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY employee_id
)
SELECT *
FROM sales_cte;


-- =====================================================
-- 22. Employees with sales above company average
-- =====================================================

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


-- =====================================================
-- 23. Customer spending rankings
-- =====================================================

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


-- =====================================================
-- 24. Recursive CTE numbers 1 to 10
-- =====================================================

WITH RECURSIVE nums AS (
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM nums
    WHERE n < 10
)
SELECT *
FROM nums;


-- =====================================================
-- 25. Orders above average amount
-- =====================================================

WITH avg_orders AS (
    SELECT *
    FROM orders
    WHERE total_amount >
    (
        SELECT AVG(total_amount)
        FROM orders
    )
)
SELECT *
FROM avg_orders;


-- =====================================================
-- 26. Rank customers by spending
-- =====================================================

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


-- =====================================================
-- 27. Second highest salary in each department
-- =====================================================

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


-- =====================================================
-- 28. Difference from department max salary
-- =====================================================

SELECT employee_name,
       department,
       salary,
       MAX(salary) OVER(
       PARTITION BY department
       ) - salary AS salary_gap
FROM employees;


-- =====================================================
-- 29. Top-performing employee by department
-- =====================================================

WITH employee_sales AS (
    SELECT
        e.employee_id,
        e.employee_name,
        e.department,
        COALESCE(SUM(o.total_amount),0) AS total_sales
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


-- =====================================================
-- 30. Monthly sales trend report
-- =====================================================

WITH monthly_sales AS (
    SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
           SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT month,
       total_sales,

       SUM(total_sales) OVER(
       ORDER BY month
       ) AS running_total,

       LAG(total_sales) OVER(
       ORDER BY month
       ) AS previous_month_sales,

       ROUND(
       (
           total_sales -
           LAG(total_sales) OVER(
           ORDER BY month
           )
       ) * 100.0 /
       LAG(total_sales) OVER(
       ORDER BY month
       ), 2
       ) AS percentage_growth

FROM monthly_sales;
