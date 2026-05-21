-- =========================================
-- DENSE_RANK() QUERIES
-- =========================================

-- 19. Dense rank employees based on joining date

SELECT
emp_name,
join_date,
DENSE_RANK() OVER(
ORDER BY join_date DESC
) AS dense_join_rank
FROM employees;

-- 20. Dense rank orders based on amount

SELECT
order_id,
amount,
DENSE_RANK() OVER(
ORDER BY amount DESC
) AS dense_amount_rank
FROM orders;

-- 21. Dense rank within city based on amount

SELECT
order_id,
city,
amount,
DENSE_RANK() OVER(
PARTITION BY city
ORDER BY amount DESC
) AS dense_city_rank
FROM orders;
