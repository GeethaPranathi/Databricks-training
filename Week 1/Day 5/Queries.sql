-- =====================================================
-- 1. ROW_NUMBER by salary
-- =====================================================

SET @row_num = 0;

SELECT employee_name,
       salary,
       (@row_num := @row_num + 1) AS row_num
FROM employees
ORDER BY salary DESC;


-- =====================================================
-- 2. RANK by salary
-- =====================================================

SELECT e1.employee_name,
       e1.salary,
       (
           SELECT COUNT(DISTINCT e2.salary)
           FROM employees e2
           WHERE e2.salary > e1.salary
       ) + 1 AS rank_num
FROM employees e1
ORDER BY salary DESC;


-- =====================================================
-- 3. DENSE_RANK by salary
-- =====================================================

SELECT e1.employee_name,
       e1.salary,
       (
           SELECT COUNT(DISTINCT e2.salary)
           FROM employees e2
           WHERE e2.salary > e1.salary
       ) + 1 AS dense_rank_num
FROM employees e1
ORDER BY salary DESC;


-- =====================================================
-- 4. Top 3 highest paid employees
-- =====================================================

SELECT *
FROM (
    SELECT employee_name,
           salary,
           ROW_NUMBER() OVER(
           ORDER BY salary DESC
           ) AS rn
    FROM employees
) t
WHERE rn <= 3;


-- =====================================================
-- 5. Rank employees within department
-- =====================================================

SELECT employee_name,
       department,
       salary,
       RANK() OVER(
       PARTITION BY department
       ORDER BY salary DESC
       ) AS dept_rank
FROM employees;


-- =====================================================
-- 6. Highest salary in each department
-- =====================================================

SELECT employee_name,
       department,
       salary,
       MAX(salary) OVER(
       PARTITION BY department
       ) AS highest_salary
FROM employees;


-- =====================================================
-- 7. Running total of orders
-- =====================================================

SELECT order_id,
       order_date,
       total_amount,
       SUM(total_amount) OVER(
       ORDER BY order_date
       ) AS running_total
FROM orders;


-- =====================================================
-- 8. Cumulative sales per employee
-- =====================================================

SELECT employee_id,
       order_date,
       total_amount,
       SUM(total_amount) OVER(
       PARTITION BY employee_id
       ORDER BY order_date
       ) AS cumulative_sales
FROM orders;


-- =====================================================
-- 9. Previous order amount using LAG
-- =====================================================

SELECT customer_id,
       order_date,
       total_amount,
       LAG(total_amount) OVER(
       PARTITION BY customer_id
       ORDER BY order_date
       ) AS previous_order
FROM orders;


-- =====================================================
-- 10. Next order amount using LEAD
-- =====================================================

SELECT customer_id,
       order_date,
       total_amount,
       LEAD(total_amount) OVER(
       PARTITION BY customer_id
       ORDER BY order_date
       ) AS next_order
FROM orders;
