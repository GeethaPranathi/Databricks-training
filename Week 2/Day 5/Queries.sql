# QUERIES

```sql
-- =========================================
-- NUMBER FUNCTIONS QUERIES
-- =========================================

-- 1. ABS – Absolute Value

SELECT ABS(-100) AS absolute_value;

-- 2. ROUND – Round to Decimals

SELECT
    emp_name,
    ROUND(base_salary, 0) AS rounded_salary_0
FROM employee_salary;

SELECT
    emp_name,
    ROUND(base_salary, 2) AS rounded_salary_2
FROM employee_salary;

-- 3. CEILING / CEIL – Round Up

SELECT
    emp_name,
    CEIL(base_salary) AS ceil_salary
FROM employee_salary;

-- 4. FLOOR – Round Down

SELECT
    emp_name,
    FLOOR(base_salary) AS floor_salary
FROM employee_salary;

-- 5. TRUNCATE – Remove Decimals

SELECT
    emp_name,
    TRUNCATE(base_salary, 1) AS truncated_salary
FROM employee_salary;

-- 6. MOD – Remainder

SELECT
    emp_name,
    MOD(experience_years, 2) AS remainder_value
FROM employee_salary;

-- 7. POWER / POW – Exponent

SELECT POWER(2,3) AS power_result;

SELECT POW(5,2) AS pow_result;

-- 8. SQRT – Square Root

SELECT SQRT(64) AS square_root;

-- 9. SIGN – Sign of Number

SELECT
    emp_name,
    SIGN(base_salary) AS sign_value
FROM employee_salary;

-- 10. RAND – Random Number

SELECT RAND() AS random_number;

-- 11. FORMAT – Format Number

SELECT
    emp_name,
    FORMAT(base_salary,2) AS formatted_salary
FROM employee_salary;

-- 12. GREATEST – Maximum Value

SELECT
    emp_name,
    GREATEST(base_salary, IFNULL(bonus,0)) AS maximum_value
FROM employee_salary;

-- 13. LEAST – Minimum Value

SELECT
    emp_name,
    LEAST(base_salary, IFNULL(bonus,0)) AS minimum_value
FROM employee_salary;
```

---

```sql
-- =========================================
-- REGEX & STRING FUNCTION QUERIES
-- =========================================

-- Q1
-- First numeric characters from beginning

SELECT
id,
mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '^[0-9]';

-- Q2
-- Numeric characters at ending

SELECT
id,
RIGHT(mixed_value,2) AS ending_numbers
FROM regex_practice;

-- Q3
-- First character

SELECT
id,
LEFT(mixed_value,1) AS first_character
FROM regex_practice;

-- Q4
-- Last character

SELECT
id,
RIGHT(mixed_value,1) AS last_character
FROM regex_practice;

-- Q5
-- Exactly two digits

SELECT
id,
mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9][0-9]';

-- Q6
-- One numeric character

SELECT
id,
mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]';

-- Q7
-- Country code from phone

SELECT
id,
SUBSTRING(phone,2,2) AS country_code
FROM regex_practice;

-- Q8
-- Numeric portion between letters

SELECT
id,
mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]+';

-- Q9
-- Text before @

SELECT
id,
SUBSTRING_INDEX(email,'@',1) AS username
FROM regex_practice;

-- Q10
-- Text after @

SELECT
id,
SUBSTRING_INDEX(email,'@',-1) AS domain_text
FROM regex_practice;

-- Q11
-- Domain name only

SELECT
id,
SUBSTRING_INDEX(
SUBSTRING_INDEX(email,'@',-1),
'.',
1
) AS domain_name
FROM regex_practice;

-- Q12
-- Text after last dot

SELECT
id,
SUBSTRING_INDEX(email,'.',-1) AS extension_name
FROM regex_practice;

-- Q13
-- Alphabetic sequence

SELECT
id,
mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[A-Za-z]+';

-- Q14
-- Numeric sequence

SELECT
id,
mixed_value
FROM regex_practice
WHERE mixed_value REGEXP '[0-9]+';

-- Q15
-- First 3 characters

SELECT
id,
LEFT(full_text,3) AS first_three
FROM regex_practice;

-- Q16
-- Last 2 characters

SELECT
id,
RIGHT(full_text,2) AS last_two
FROM regex_practice;

-- Q17
-- Employee number

SELECT
id,
SUBSTRING(full_text,4,3) AS employee_number
FROM regex_practice;

-- Q18
-- Country code at end

SELECT
id,
RIGHT(full_text,2) AS country_code
FROM regex_practice;

-- Q19
-- Text between underscores

SELECT
id,
SUBSTRING_INDEX(
SUBSTRING_INDEX(full_text,'_',2),
'_',
-1
) AS middle_text
FROM regex_practice;

-- Q20
-- Digits after +

SELECT
id,
SUBSTRING(phone,2,2) AS phone_country_code
FROM regex_practice;
```
