-- =========================================
-- LEVEL 1 (BASIC)
-- =========================================

-- 1. Employees whose salary is NULL

SELECT *
FROM Employees
WHERE salary IS NULL;

-- 2. Orders where discount is NOT NULL

SELECT *
FROM Orders
WHERE discount IS NOT NULL;

-- 3. Products where category is NULL

SELECT *
FROM Products
WHERE category IS NULL;

-- 4. Count employees with NULL manager_id

SELECT COUNT(*) AS total_null_managers
FROM Employees
WHERE manager_id IS NULL;

-- =========================================
-- LEVEL 2 (ISNULL / IFNULL)
-- =========================================

-- 5. Replace NULL salary with 0

SELECT
    emp_id,
    name,
    IFNULL(salary,0) AS salary
FROM Employees;

-- 6. Replace NULL bonus with 1000

SELECT
    emp_id,
    name,
    IFNULL(bonus,1000) AS bonus
FROM Employees;

-- 7. Replace NULL amount with 500

SELECT
    order_id,
    customer_name,
    IFNULL(amount,500) AS order_amount
FROM Orders;

-- 8. Replace NULL stock with 0

SELECT
    product_id,
    product_name,
    IFNULL(stock,0) AS stock
FROM Products;

-- =========================================
-- LEVEL 3 (COALESCE)
-- =========================================

-- 9. Employee earnings using salary else bonus

SELECT
    emp_id,
    name,
    COALESCE(salary, bonus) AS earnings
FROM Employees;

-- 10. First available value salary → bonus → 0

SELECT
    emp_id,
    name,
    COALESCE(salary, bonus, 0) AS final_income
FROM Employees;

-- 11. Product price else 1000

SELECT
    product_id,
    product_name,
    COALESCE(price,1000) AS final_price
FROM Products;

-- 12. Customer payment amount → discount → 0

SELECT
    order_id,
    customer_name,
    COALESCE(amount, discount, 0) AS payment
FROM Orders;

-- =========================================
-- LEVEL 4 (NULLIF)
-- =========================================

-- 13. Convert salary to NULL if salary = 0

SELECT
    emp_id,
    name,
    NULLIF(salary,0) AS salary_check
FROM Employees;

-- 14. Convert discount to NULL if discount = 0

SELECT
    order_id,
    NULLIF(discount,0) AS discount_check
FROM Orders;

-- 15. Avoid divide by zero

SELECT
    order_id,
    amount / NULLIF(discount,0) AS division_result
FROM Orders;

-- 16. Replace DISC10 with NULL

SELECT
    order_id,
    NULLIF(coupon_code,'DISC10') AS coupon_code
FROM Orders;

-- =========================================
-- LEVEL 5 (REAL-TIME SCENARIOS)
-- =========================================

-- 17. Total earnings salary + bonus

SELECT
    emp_id,
    name,
    IFNULL(salary,0) + IFNULL(bonus,0) AS total_earnings
FROM Employees;

-- 18. Employees where salary and bonus both NULL

SELECT *
FROM Employees
WHERE salary IS NULL
AND bonus IS NULL;

-- 19. Products where price NULL but category exists

SELECT *
FROM Products
WHERE price IS NULL
AND category IS NOT NULL;

-- 20. Orders where amount and discount both NULL

SELECT *
FROM Orders
WHERE amount IS NULL
AND discount IS NULL;

-- =========================================
-- LEVEL 6 (ADVANCED)
-- =========================================

-- 21. Employee income using COALESCE

SELECT
    emp_id,
    name,
    COALESCE(salary, bonus, 1000) AS employee_income
FROM Employees;

-- 22. Replace empty discount with NULL

SELECT
    order_id,
    NULLIF(discount,0) AS final_discount
FROM Orders;

-- 23. Final payable amount

SELECT
    order_id,
    customer_name,
    IFNULL(amount,0) - IFNULL(discount,0) AS payable_amount
FROM Orders;

-- 24. Employees where salary NULL but manager exists

SELECT *
FROM Employees
WHERE salary IS NULL
AND manager_id IS NOT NULL;
