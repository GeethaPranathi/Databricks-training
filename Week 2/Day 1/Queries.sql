-- ================================
-- QUERIES.SQL
-- ================================

-- QUESTION 1
SELECT
    emp_id,
    UPPER(emp_name) AS upper_name,
    LOWER(emp_name) AS lower_name,
    CONCAT(UPPER(LEFT(emp_name,1)),LOWER(SUBSTRING(emp_name,2))) AS proper_name,
    ROUND(base_salary + IFNULL(bonus,0)) AS total_income,
    YEAR(joining_date) AS joining_year,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) > 7 THEN 'Senior'
        WHEN TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) BETWEEN 4 AND 7 THEN 'Mid'
        ELSE 'Junior'
    END AS employee_level
FROM employee_payments;

-- QUESTION 2
SELECT
    order_id,
    UPPER(customer_name) AS customer_name,
    DATEDIFF(IFNULL(delivery_date,CURDATE()), order_date) AS delivery_days,
    IFNULL(delivery_date,CURDATE()) AS final_delivery_date,
    TRUNCATE(order_amount,1) AS truncated_amount,
    CASE
        WHEN delivery_date IS NULL THEN 'Pending'
        WHEN DATEDIFF(delivery_date,order_date)=0 THEN 'Same-day'
        WHEN DATEDIFF(delivery_date,order_date)>3 THEN 'Delayed'
        ELSE 'Normal'
    END AS delivery_status
FROM orders_delivery;

-- QUESTION 3
SELECT
    cust_id,
    CONCAT(UPPER(LEFT(cust_name,1)),LOWER(SUBSTRING(cust_name,2))) AS customer_name,
    MONTHNAME(purchase_date) AS purchase_month,
    ROUND(purchase_amount) AS rounded_amount,
    ABS(purchase_amount) AS absolute_amount,
    CASE
        WHEN purchase_amount > 15000 THEN 'High spender'
        WHEN purchase_amount BETWEEN 8000 AND 15000 THEN 'Medium'
        ELSE 'Low'
    END AS spender_type
FROM customer_spending;

-- QUESTION 4
SELECT
    user_id,
    SUBSTRING_INDEX(user_email,'@',-1) AS email_domain,
    TIMESTAMPDIFF(MONTH,start_date,end_date) AS duration_months,
    FORMAT(subscription_fee,2) AS formatted_fee,
    DATEDIFF(end_date,CURDATE()) AS remaining_days,
    CASE
        WHEN end_date > CURDATE() THEN 'Active'
        WHEN DATEDIFF(end_date,CURDATE()) BETWEEN 0 AND 30 THEN 'Expiring Soon'
        ELSE 'Expired'
    END AS subscription_status
FROM subscriptions;

-- QUESTION 5
SELECT
    loan_id,
    UPPER(customer_name) AS customer_name,
    POWER((1 + interest_rate/100),1/12) AS monthly_interest,
    TIMESTAMPDIFF(YEAR,loan_start,CURDATE()) AS years_since_loan,
    ROUND((loan_amount * (interest_rate/100))/12) AS emi,
    CASE
        WHEN interest_rate > 9 THEN 'High Risk'
        WHEN interest_rate BETWEEN 8 AND 9 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_category
FROM loan_details;

-- QUESTION 6
SELECT
    emp_id,
    LOWER(emp_name) AS employee_name,
    ROUND((present_days/total_days)*100,2) AS attendance_percentage,
    MONTHNAME(record_date) AS month_name,
    total_days - present_days AS absent_days,
    CASE
        WHEN (present_days/total_days)*100 >= 90 THEN 'Excellent'
        WHEN (present_days/total_days)*100 BETWEEN 75 AND 89 THEN 'Average'
        ELSE 'Poor'
    END AS attendance_status
FROM attendance;

-- QUESTION 7
SELECT
    product_id,
    CONCAT(UPPER(LEFT(product_name,1)),LOWER(SUBSTRING(product_name,2))) AS product_name,
    ABS(mrp-selling_price) AS discount_amount,
    ROUND(((mrp-selling_price)/mrp)*100,2) AS discount_percentage,
    DAYNAME(sale_date) AS sale_day,
    CASE
        WHEN selling_price < mrp THEN 'Valid Discount'
        WHEN selling_price > mrp THEN 'Overpriced'
        ELSE 'No Discount'
    END AS discount_status
FROM product_sales;

-- QUESTION 8
SELECT
    policy_id,
    UPPER(holder_name) AS holder_name,
    TIMESTAMPDIFF(YEAR,policy_start,policy_end) AS policy_duration,
    DATEDIFF(policy_end,CURDATE()) AS remaining_days,
    ROUND(premium_amount) AS rounded_premium,
    CASE
        WHEN policy_end > CURDATE()
             AND TIMESTAMPDIFF(YEAR,policy_start,policy_end) >= 3 THEN 'Long Term'
        WHEN policy_end > CURDATE() THEN 'Mid Term'
        ELSE 'Expired'
    END AS policy_status
FROM insurance_policies;

-- QUESTION 9
SELECT
    emp_id,
    LOWER(emp_name) AS employee_name,
    TIMESTAMPDIFF(YEAR,last_hike,CURDATE()) AS years_since_hike,
    CASE
        WHEN rating = 5 THEN current_salary*0.20
        WHEN rating = 4 THEN current_salary*0.10
        ELSE 0
    END AS increment_amount,
    ROUND(
        current_salary +
        CASE
            WHEN rating = 5 THEN current_salary*0.20
            WHEN rating = 4 THEN current_salary*0.10
            ELSE 0
        END
    ) AS new_salary,
    CASE
        WHEN rating = 5 THEN 'High Increment'
        WHEN rating = 4 THEN 'Moderate'
        ELSE 'No Increment'
    END AS increment_status
FROM salary_revision;

-- QUESTION 10
SELECT
    account_id,
    customer_name,
    ABS(balance) AS absolute_balance,
    DATEDIFF(CURDATE(),last_transaction) AS days_since_transaction,
    CONCAT(UPPER(LEFT(branch,1)),LOWER(SUBSTRING(branch,2))) AS branch_name,
    SIGN(balance) AS balance_sign,
    CASE
        WHEN balance < 0 THEN 'Overdrawn'
        WHEN DATEDIFF(CURDATE(),last_transaction) > 365 THEN 'Dormant'
        ELSE 'Active'
    END AS account_status
FROM bank_accounts;
