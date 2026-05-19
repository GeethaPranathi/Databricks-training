-- =====================================================
-- 11. Difference between current and previous order
-- =====================================================

SELECT customer_id,
       order_date,
       total_amount,
       total_amount -
       COALESCE(
           LAG(total_amount) OVER(
           PARTITION BY customer_id
           ORDER BY order_date
           ),0
       ) AS difference_amount
FROM orders;


-- =====================================================
-- 12. Moving average of last 3 orders
-- =====================================================

SELECT order_id,
       order_date,
       total_amount,
       AVG(total_amount) OVER(
       ORDER BY order_date
       ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
       ) AS moving_avg
FROM orders;


-- =====================================================
-- 13. Salary quartiles using NTILE
-- =====================================================

SELECT employee_name,
       salary,
       NTILE(4) OVER(
       ORDER BY salary DESC
       ) AS quartile
FROM employees;


-- =====================================================
-- 14. First order by each customer
-- =====================================================

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


-- =====================================================
-- 15. Latest order by each customer
-- =====================================================

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


-- =====================================================
-- 16. Salary with department average
-- =====================================================

SELECT employee_name,
       department,
       salary,
       AVG(salary) OVER(
       PARTITION BY department
       ) AS dept_avg
FROM employees;


-- =====================================================
-- 17. Employees earning above department average
-- =====================================================

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


-- =====================================================
-- 18. Department payroll
-- =====================================================

SELECT employee_name,
       department,
       salary,
       SUM(salary) OVER(
       PARTITION BY department
       ) AS payroll
FROM employees;


-- =====================================================
-- 19. Salary percentage contribution
-- =====================================================

SELECT employee_name,
       department,
       salary,
       ROUND(
       salary * 100.0 /
       SUM(salary) OVER(
       PARTITION BY department
       ), 2
       ) AS contribution_percent
FROM employees;


-- =====================================================
-- 20. Total employees count
-- =====================================================

SELECT employee_name,
       COUNT(*) OVER() AS total_employees
FROM employees;
