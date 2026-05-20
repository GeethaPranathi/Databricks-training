-- =========================================
-- NULL FUNCTIONS QUERIES
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

SELECT COUNT(*) AS total_null_manager
FROM Employees
WHERE manager_id IS NULL;

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
IFNULL(amount,500) AS amount
FROM Orders;

-- 8. Replace NULL stock with 0

SELECT
product_id,
product_name,
IFNULL(stock,0) AS stock
FROM Products;

-- 9. Employee earnings

SELECT
emp_id,
name,
COALESCE(salary,bonus) AS earnings
FROM Employees;

-- 10. First available value

SELECT
emp_id,
name,
COALESCE(salary,bonus,0) AS final_income
FROM Employees;

-- 11. Product price default 1000

SELECT
product_id,
product_name,
COALESCE(price,1000) AS final_price
FROM Products;

-- 12. Customer payment

SELECT
order_id,
customer_name,
COALESCE(amount,discount,0) AS payment
FROM Orders;

-- 13. Convert salary to NULL if 0

SELECT
emp_id,
name,
NULLIF(salary,0) AS salary_check
FROM Employees;

-- 14. Convert discount to NULL if 0

SELECT
order_id,
NULLIF(discount,0) AS discount_check
FROM Orders;

-- 15. Avoid divide by zero

SELECT
order_id,
amount / NULLIF(discount,0) AS divide_result
FROM Orders;

-- 16. Replace DISC10 with NULL

SELECT
order_id,
NULLIF(coupon_code,'DISC10') AS coupon_code
FROM Orders;

-- 17. Total earnings

SELECT
emp_id,
name,
IFNULL(salary,0) + IFNULL(bonus,0) AS total_earnings
FROM Employees;

-- 18. Employees with salary and bonus NULL

SELECT *
FROM Employees
WHERE salary IS NULL
AND bonus IS NULL;

-- 19. Products where price NULL but category exists

SELECT *
FROM Products
WHERE price IS NULL
AND category IS NOT NULL;

-- 20. Orders where amount and discount NULL

SELECT *
FROM Orders
WHERE amount IS NULL
AND discount IS NULL;

-- 21. Employee income using COALESCE

SELECT
emp_id,
name,
COALESCE(salary,bonus,1000) AS employee_income
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

-- 24. Salary NULL but manager exists

SELECT *
FROM Employees
WHERE salary IS NULL
AND manager_id IS NOT NULL;

-- =========================================
-- STRING FUNCTIONS QUERIES
-- =========================================

-- 25. LENGTH / CHAR_LENGTH

SELECT
full_name,
LENGTH(full_name) AS length_value
FROM employees;

SELECT
full_name,
CHAR_LENGTH(full_name) AS char_length_value
FROM employees;

-- 26. UPPER / LOWER

SELECT
UPPER(department) AS upper_department,
LOWER(city) AS lower_city
FROM employees;

-- 27. TRIM / LTRIM / RTRIM

SELECT
TRIM(full_name) AS trim_name,
LTRIM(full_name) AS left_trim,
RTRIM(full_name) AS right_trim
FROM employees;

-- 28. CONCAT

SELECT
CONCAT(full_name, ' - ', department) AS emp_details
FROM employees;

-- 29. CONCAT_WS

SELECT
CONCAT_WS(' | ', emp_id, full_name, city)
AS employee_info
FROM employees;

-- 30. SUBSTRING / SUBSTR

SELECT
SUBSTRING(email,1,7) AS substring_email
FROM employees;

SELECT
SUBSTR(email,1,5) AS substr_email
FROM employees;

-- 31. LEFT / RIGHT

SELECT
LEFT(full_name,4) AS left_name,
RIGHT(city,3) AS right_city
FROM employees;

-- 32. INSTR

SELECT
email,
INSTR(email,'@') AS at_position
FROM employees;

-- 33. LOCATE

SELECT
email,
LOCATE('.',email) AS dot_position
FROM employees;

-- 34. REPLACE

SELECT
REPLACE(department,'Data','Big Data')
AS replaced_department
FROM employees;

-- 35. REVERSE

SELECT
full_name,
REVERSE(full_name) AS reverse_name
FROM employees;

-- 36. LPAD / RPAD

SELECT
LPAD(emp_id,5,'0') AS padded_empid
FROM employees;

SELECT
RPAD(city,15,'*') AS padded_city
FROM employees;

-- 37. TRIM + REPLACE

SELECT
TRIM(REPLACE(city,' ',''))
AS cleaned_city
FROM employees;

-- 38. IFNULL

SELECT
full_name,
IFNULL(remarks,'No remarks')
AS final_remarks
FROM employees;

-- 39. COALESCE

SELECT
full_name,
COALESCE(remarks,'N/A')
AS remarks_value
FROM employees;

-- 40. FIND_IN_SET

SELECT
FIND_IN_SET(
'Analytics',
'Data,Analytics,AI'
) AS position_value;
