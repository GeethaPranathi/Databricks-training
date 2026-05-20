-- 1. Current Date

SELECT CURDATE();

SELECT CURRENT_DATE();


-- 2. Current Time

SELECT CURTIME();

SELECT CURRENT_TIME();


-- 3. Current Timestamp

SELECT NOW();

SELECT CURRENT_TIMESTAMP;


-- 4. Extract Year, Month, Day

SELECT
    order_id,
    YEAR(order_date) AS year_value,
    MONTH(order_date) AS month_value,
    DAY(order_date) AS day_value
FROM orders;


-- 5. Extract Using EXTRACT()

SELECT
    order_id,
    EXTRACT(YEAR FROM order_date) AS extract_year,
    EXTRACT(MONTH FROM order_date) AS extract_month,
    EXTRACT(DAY FROM order_date) AS extract_day
FROM orders;


-- 6. Month Name & Day Name

SELECT
    order_id,
    MONTHNAME(order_date) AS month_name,
    DAYNAME(order_date) AS day_name
FROM orders;


-- 7. WEEKDAY & DAYOFWEEK

SELECT
    order_id,
    WEEKDAY(order_date) AS weekday_number,
    DAYOFWEEK(order_date) AS dayofweek_number
FROM orders;


-- 8. Identify Weekends Using DAYNAME

SELECT
    order_id,
    order_date
FROM orders
WHERE DAYNAME(order_date) IN ('Saturday','Sunday');


-- 9. Identify Weekends Using DAYOFWEEK

SELECT
    order_id,
    order_date
FROM orders
WHERE DAYOFWEEK(order_date) IN (1,7);


-- 10. Identify Weekdays

SELECT
    order_id,
    order_date
FROM orders
WHERE DAYOFWEEK(order_date) BETWEEN 2 AND 6;


-- 11. Add Days

SELECT
    order_id,
    order_date,
    DATE_ADD(order_date, INTERVAL 5 DAY) AS added_days
FROM orders;


-- 12. Subtract Days

SELECT
    order_id,
    order_date,
    DATE_SUB(order_date, INTERVAL 3 DAY) AS subtracted_days
FROM orders;


-- 13. Add Months

SELECT
    order_id,
    DATE_ADD(order_date, INTERVAL 1 MONTH) AS added_month
FROM orders;


-- 14. Subtract Months

SELECT
    order_id,
    DATE_SUB(order_date, INTERVAL 2 MONTH) AS subtracted_month
FROM orders;


-- 15. Add Years

SELECT
    order_id,
    DATE_ADD(order_date, INTERVAL 1 YEAR) AS added_year
FROM orders;


-- 16. DATEDIFF

SELECT
    order_id,
    DATEDIFF(delivery_date, order_date) AS delivery_days
FROM orders;


-- 17. TIMESTAMPDIFF

SELECT
    order_id,
    TIMESTAMPDIFF(DAY, order_date, delivery_date) AS days_difference,
    TIMESTAMPDIFF(MONTH, order_date, delivery_date) AS months_difference
FROM orders;


-- 18. Last Day of Month

SELECT
    order_id,
    LAST_DAY(order_date) AS last_day
FROM orders;


-- 19. First Day of Month

SELECT
    order_id,
    DATE_SUB(order_date, INTERVAL DAY(order_date)-1 DAY) AS first_day
FROM orders;


-- 20. Date Formatting

SELECT
    order_id,
    DATE_FORMAT(order_date, '%d-%m-%Y') AS formatted_date
FROM orders;

SELECT
    order_id,
    DATE_FORMAT(order_date, '%M %d, %Y') AS long_format_date
FROM orders;


-- 21. String to Date

SELECT STR_TO_DATE('15-01-2024', '%d-%m-%Y');


-- 22. Timestamp Formatting

SELECT
    order_id,
    DATE_FORMAT(order_timestamp, '%d-%m-%Y %H:%i:%s') AS formatted_timestamp
FROM orders;


-- 23. Filter by Month Number

SELECT *
FROM orders
WHERE MONTH(order_date) = 1;


-- 24. Filter by Month Name

SELECT *
FROM orders
WHERE MONTHNAME(order_date) = 'February';


-- 25. Financial Year Logic

SELECT
    order_id,
    order_date,
    CASE
        WHEN MONTH(order_date) >= 4
        THEN CONCAT(YEAR(order_date), '-', YEAR(order_date)+1)
        ELSE CONCAT(YEAR(order_date)-1, '-', YEAR(order_date))
    END AS financial_year
FROM orders;


-- 26. Orders in Last 7 Days

SELECT *
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 7 DAY;


-- 27. Orders Placed Today

SELECT *
FROM orders
WHERE DATE(order_timestamp) = CURDATE();
