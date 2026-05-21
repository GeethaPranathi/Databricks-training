-- =========================================
-- REGEX FOUNDATION QUERIES
-- =========================================

-- =========================================
-- 1. Extract Digits
-- =========================================

SELECT '123ABc' REGEXP '[0-9]' AS digit_found;

-- =========================================
-- 2. Extract Alphabets
-- =========================================

SELECT '123ABc' REGEXP '[A-Za-z]' AS alphabet_found;

-- =========================================
-- 3. Starts With Digit (^)
-- =========================================

SELECT '123abc' REGEXP '^[0-9]' AS starts_with_digit;

SELECT 'abc123' REGEXP '^[0-9]' AS starts_with_digit;

-- =========================================
-- 4. Ends With Digit ($)
-- =========================================

SELECT '123abc' REGEXP '[0-9]$' AS ends_with_digit;

SELECT 'abc123' REGEXP '[0-9]$' AS ends_with_digit;

-- =========================================
-- 5. Exact Characters Using {}
-- =========================================

SELECT '12345678abc' REGEXP '[0-9]{2}' AS exact_two_digits;

SELECT 'abcdefghi123' REGEXP '[a-zA-Z]{2}' AS exact_two_letters;

-- =========================================
-- 6. One or More Characters (+)
-- =========================================

SELECT '123abc' REGEXP '[0-9]+' AS continuous_digits;

SELECT 'abc123' REGEXP '[0-9]+' AS continuous_digits;

SELECT 'abc123' REGEXP '[a-zA-Z]+' AS continuous_letters;

-- =========================================
-- 7. Principle of Continuity
-- =========================================

SELECT '123abc567' REGEXP '[0-9]+' AS digit_continuity;

SELECT 'abc123cde' REGEXP '[a-zA-Z]+' AS text_continuity;

-- =========================================
-- 8. Extract Everything
-- =========================================

SELECT '123abc567' REGEXP '[0-9a-zA-Z]+' AS extract_all;

-- =========================================
-- 9. Extract Digits From Middle
-- =========================================

SELECT 'abc123gef' REGEXP '[0-9]+' AS middle_digits;

-- =========================================
-- 10. Extract Domain Part
-- =========================================

SELECT
SUBSTRING_INDEX('karthik@gmail.com','@',-1)
AS domain_name;

-- =========================================
-- 11. Extract Top Level Domain
-- =========================================

SELECT
SUBSTRING_INDEX('karthik@gmail.com','.',-1)
AS extension_name;

-- =========================================
-- 12. Phone Number Validation
-- =========================================

SELECT '+91-9989454737'
REGEXP '^\\+91-[0-9]{10}$'
AS valid_phone;

-- =========================================
-- 13. Remove @ Symbol
-- =========================================

SELECT
REPLACE('@gmail.com','@','')
AS cleaned_domain;

-- =========================================
-- 14. Valid Email Validation
-- =========================================

SELECT
'karthik@gmail.com'
REGEXP '^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}$'
AS valid_email;

SELECT
'karthik44@gmail.com'
REGEXP '^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}$'
AS valid_email;

SELECT
'vinay@infosys.com'
REGEXP '^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}$'
AS valid_email;

-- =========================================
-- 15. Invalid Email Example
-- =========================================

SELECT
'@gmail.com'
REGEXP '^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}$'
AS invalid_email;

-- =========================================
-- 16. Username Validation
-- =========================================

SELECT
'karthik.kumar44'
REGEXP '^[a-zA-Z0-9._-]+$'
AS valid_username;

-- =========================================
-- 17. Domain Validation
-- =========================================

SELECT
'gmail'
REGEXP '^[a-zA-Z0-9]+$'
AS valid_domain;

-- =========================================
-- 18. Extension Validation
-- =========================================

SELECT
'com'
REGEXP '^[a-zA-Z]{2,3}$'
AS valid_extension;

-- =========================================
-- 19. Full Email Structure Validation
-- =========================================

SELECT
'karthik_kumar44@gmail.com'
REGEXP '^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}$'
AS final_email_validation;

-- =========================================
-- FLIPKART RAW DATA ANALYSIS
-- =========================================

-- =========================================
-- TOTAL RECORDS
-- =========================================

SELECT COUNT(*) AS total_records
FROM flipkart_raw_data;

-- =========================================
-- NULL VALUES
-- =========================================

SELECT *
FROM flipkart_raw_data
WHERE amount IS NULL;

SELECT *
FROM flipkart_raw_data
WHERE city IS NULL;

-- =========================================
-- NEGATIVE VALUES
-- =========================================

SELECT *
FROM flipkart_raw_data
WHERE amount < 0;

-- =========================================
-- DUPLICATE ORDER IDS
-- =========================================

SELECT
order_id,
COUNT(*) AS duplicate_count
FROM flipkart_raw_data
GROUP BY order_id
HAVING COUNT(*) > 1;

-- =========================================
-- UPDATED RECORDS
-- =========================================

SELECT
order_id,
COUNT(DISTINCT order_date) AS different_dates
FROM flipkart_raw_data
GROUP BY order_id
HAVING COUNT(DISTINCT order_date) > 1;
