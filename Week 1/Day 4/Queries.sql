-- =====================================================
-- 1. ROW_NUMBER() ordered by salary descending
-- =====================================================

SELECT 
    employee_name,
    salary,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;


-- =====================================================
-- 2. RANK() employees by salary
-- =====================================================

SELECT 
    employee_name,
    salary,
    RANK() OVER(ORDER BY salary DESC) AS salary_rank
FROM employees;


-- =====================================================
-- 3. DENSE_RANK() employees by salary
-- =====================================================

SELECT 
    employee_name,
    salary,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank
FROM employees;


-- =====================================================
-- 4. Top 3 highest-paid employees
-- =====================================================

WITH ranked_employees AS (
    SELECT 
        employee_name,
        salary,
        ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
    FROM employees
)
SELECT *
FROM ranked_employees
WHERE rn <= 3;


-- =====================================================
-- 5. Rank employees within each department
-- =====================================================

SELECT 
    employee_name,
    department,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employees;


-- =====================================================
-- 6. Highest salary in each department
-- =====================================================

SELECT 
    employee_name,
    department,
    salary,
    MAX(salary) OVER(PARTITION BY department) AS highest_salary
FROM employees;


-- =====================================================
-- 7. Running total of order amounts
-- =====================================================

SELECT 
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER(ORDER BY order_date) AS running_total
FROM orders;


-- =====================================================
-- 8. Cumulative sales amount for each employee
-- =====================================================

SELECT 
    employee_id,
    order_id,
    total_amount,
    SUM(total_amount) OVER(
        PARTITION BY employee_id
        ORDER BY order_date
    ) AS cumulative_sales
FROM orders;


-- =====================================================
-- 9. Previous order amount using LAG()
-- =====================================================

SELECT 
    customer_id,
    order_id,
    total_amount,
    LAG(total_amount) OVER(
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS previous_order
FROM orders;


-- =====================================================
-- 10. Next order amount using LEAD()
-- =====================================================

SELECT 
    customer_id,
    order_id,
    total_amount,
    LEAD(total_amount) OVER(
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS next_order
FROM orders;


-- =====================================================
-- 11. Difference between current and previous order
-- =====================================================

SELECT 
    customer_id,
    order_id,
    total_amount,
    total_amount - LAG(total_amount) OVER(
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS difference_amount
FROM orders;


-- =====================================================
-- 12. Moving average of last 3 orders
-- =====================================================

SELECT 
    order_id,
    order_date,
    total_amount,
    AVG(total_amount) OVER(
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg
FROM orders;


-- =====================================================
-- 13. Divide employees into salary quartiles
-- =====================================================

SELECT 
    employee_name,
    salary,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;


-- =====================================================
-- 14. First order placed by each customer
-- =====================================================

WITH first_orders AS (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY customer_id
               ORDER BY order_date
           ) AS rn
    FROM orders
)
SELECT *
FROM first_orders
WHERE rn = 1;


-- =====================================================
-- 15. Latest order placed by each customer
-- =====================================================

WITH latest_orders AS (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY customer_id
               ORDER BY order_date DESC
           ) AS rn
    FROM orders
)
SELECT *
FROM latest_orders
WHERE rn = 1;


-- =====================================================
-- 16. Employee salaries with department average
-- =====================================================

SELECT 
    employee_name,
    department,
    salary,
    AVG(salary) OVER(PARTITION BY department) AS dept_avg_salary
FROM employees;


-- =====================================================
-- 17. Employees earning above department average
-- =====================================================

WITH dept_avg AS (
    SELECT 
        employee_name,
        department,
        salary,
        AVG(salary) OVER(PARTITION BY department) AS avg_salary
    FROM employees
)
SELECT *
FROM dept_avg
WHERE salary > avg_salary;


-- =====================================================
-- 18. Department payroll using SUM() OVER
-- =====================================================

SELECT 
    employee_name,
    department,
    salary,
    SUM(salary) OVER(PARTITION BY department) AS department_payroll
FROM employees;


-- =====================================================
-- 19. Percentage contribution of salary
-- =====================================================

SELECT 
    employee_name,
    department,
    salary,
    ROUND(
        (salary * 100.0) /
        SUM(salary) OVER(PARTITION BY department),
        2
    ) AS salary_percentage
FROM employees;


-- =====================================================
-- 20. Total employees alongside each row
-- =====================================================

SELECT 
    employee_name,
    department,
    COUNT(*) OVER() AS total_employees
FROM employees;


-- =====================================================
-- 21. CTE for total sales per employee
-- =====================================================

WITH employee_sales AS (
    SELECT 
        employee_id,
        SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY employee_id
)
SELECT *
FROM employee_sales;


-- =====================================================
-- 22. Employees whose sales exceed company average
-- =====================================================

WITH employee_sales AS (
    SELECT 
        employee_id,
        SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY employee_id
),
company_avg AS (
    SELECT AVG(total_sales) AS avg_sales
    FROM employee_sales
)
SELECT *
FROM employee_sales
WHERE total_sales > (SELECT avg_sales FROM company_avg);


-- =====================================================
-- 23. Multiple CTEs for customer spending rankings
-- =====================================================

WITH customer_spending AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
),
customer_rankings AS (
    SELECT *,
           RANK() OVER(ORDER BY total_spent DESC) AS spending_rank
    FROM customer_spending
)
SELECT *
FROM customer_rankings;


-- =====================================================
-- 24. Recursive CTE numbers 1 to 10
-- =====================================================

WITH RECURSIVE numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM numbers
    WHERE num < 10
)
SELECT *
FROM numbers;


-- =====================================================
-- 25. Recursive employee hierarchy
-- =====================================================

WITH RECURSIVE employee_hierarchy AS (
    SELECT 
        employee_id,
        employee_name,
        manager_id,
        department
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT 
        e.employee_id,
        e.employee_name,
        e.manager_id,
        e.department
    FROM employees e
    INNER JOIN employee_hierarchy eh
    ON e.manager_id = eh.employee_id
)
SELECT *
FROM employee_hierarchy;


-- =====================================================
-- 26. Orders above average order amount
-- =====================================================

WITH avg_orders AS (
    SELECT AVG(total_amount) AS avg_amount
    FROM orders
)
SELECT *
FROM orders
WHERE total_amount > (
    SELECT avg_amount
    FROM avg_orders
);


-- =====================================================
-- 27. Rank customers by total spending
-- =====================================================

WITH customer_totals AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *,
       RANK() OVER(ORDER BY total_spent DESC) AS spending_rank
FROM customer_totals;


-- =====================================================
-- 28. Second-highest salary in each department
-- =====================================================

WITH salary_rankings AS (
    SELECT 
        employee_name,
        department,
        salary,
        DENSE_RANK() OVER(
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT *
FROM salary_rankings
WHERE salary_rank = 2;


-- =====================================================
-- 29. Difference from department maximum salary
-- =====================================================

SELECT 
    employee_name,
    department,
    salary,
    MAX(salary) OVER(PARTITION BY department) - salary
        AS salary_difference
FROM employees;


-- =====================================================
-- 30. Top-performing employee in each department
-- based on total sales
-- =====================================================

WITH employee_sales AS (
    SELECT 
        e.employee_id,
        e.employee_name,
        e.department,
        SUM(o.total_amount) AS total_sales
    FROM employees e
    LEFT JOIN orders o
    ON e.employee_id = o.employee_id
    GROUP BY e.employee_id, e.employee_name, e.department
),
ranked_sales AS (
    SELECT *,
           RANK() OVER(
               PARTITION BY department
               ORDER BY total_sales DESC
           ) AS dept_rank
    FROM employee_sales
)
SELECT *
FROM ranked_sales
WHERE dept_rank = 1;


-- =====================================================
-- BONUS CHALLENGE
-- Monthly sales trends
-- =====================================================

WITH monthly_sales AS (
    SELECT 
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS monthly_total
    FROM orders
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
),
sales_analysis AS (
    SELECT 
        month,
        monthly_total,
        SUM(monthly_total) OVER(
            ORDER BY month
        ) AS running_total,

        LAG(monthly_total) OVER(
            ORDER BY month
        ) AS previous_month_sales
    FROM monthly_sales
)
SELECT *,
       ROUND(
           ((monthly_total - previous_month_sales) * 100.0)
           / previous_month_sales,
           2
       ) AS percentage_growth
FROM sales_analysis;
