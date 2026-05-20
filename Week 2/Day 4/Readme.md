# Week 2 - Day 4

## Objective

The objective of this session was to understand and practice NULL handling functions in MySQL using real-world business scenarios. The session focused on handling missing data, replacing NULL values, preventing calculation errors, and implementing conditional fallback logic using various NULL functions


# NULL FUNCTIONS IN MYSQL

This project explains NULL handling functions in MySQL using practical business examples.

The queries demonstrate how to work with:

- NULL values
- Missing salary data
- Missing discounts
- Missing stock information
- Real-time business scenarios

---

# Tables Used

## Employees

Stores employee details.

### Columns:

- emp_id
- name
- salary
- bonus
- manager_id

---

## Orders

Stores customer order details.

### Columns:

- order_id
- customer_name
- amount
- discount
- coupon_code

---

## Products

Stores product details.

### Columns:

- product_id
- product_name
- price
- category
- stock

---

# NULL Concepts Covered

## 1. IS NULL / IS NOT NULL

Used to filter NULL values.

### Example:

```sql
SELECT *
FROM Employees
WHERE salary IS NULL;
```

### Purpose:

- Find missing data
- Detect incomplete records

---

## 2. IFNULL()

Replaces NULL values with default values.

### Syntax:

```sql
IFNULL(column, replacement_value)
```

### Example:

```sql
SELECT IFNULL(salary,0)
FROM Employees;
```

### Purpose:

- Replace NULL salary
- Replace NULL stock
- Replace NULL amounts

---

## 3. COALESCE()

Returns the first non-null value.

### Syntax:

```sql
COALESCE(value1, value2, value3)
```

### Example:

```sql
COALESCE(salary, bonus, 0)
```

### Purpose:

- Multi-level fallback logic
- Income calculation
- Payment handling

---

## 4. NULLIF()

Returns NULL if two values are equal.

### Syntax:

```sql
NULLIF(value1, value2)
```

### Example:

```sql
NULLIF(discount,0)
```

### Purpose:

- Avoid divide-by-zero errors
- Replace unwanted values with NULL

---

# Levels Included

## LEVEL 1 – Basic NULL Filtering

### Topics:

- salary IS NULL
- discount IS NOT NULL
- category IS NULL
- NULL manager detection

---

## LEVEL 2 – IFNULL()

### Topics:

- Replace NULL salary with 0
- Replace NULL bonus with default value
- Replace NULL stock
- Replace NULL order amount

---

## LEVEL 3 – COALESCE()

### Topics:

- Salary fallback logic
- Bonus fallback logic
- Product default pricing
- Payment calculation

---

## LEVEL 4 – NULLIF()

### Topics:

- Convert specific values into NULL
- Prevent divide-by-zero errors
- Replace coupon values

---

## LEVEL 5 – Real-Time Scenarios

### Topics:

- Total earnings calculation
- Missing salary and bonus detection
- Missing product price analysis
- Missing order details

---

## LEVEL 6 – Advanced Queries

### Topics:

- Advanced income handling
- Final payable amount
- NULL validation with manager relationships

---

# Real-Time Business Use Cases

These queries simulate:

- Payroll systems
- E-commerce billing
- Product inventory handling
- Missing data validation
- Financial calculations

---

# SQL Functions Used

```sql
IS NULL
IS NOT NULL
IFNULL()
COALESCE()
NULLIF()
COUNT()
```

---

# Recommended Database

- MySQL 8+
- MariaDB

---

# Suitable For

- SQL Beginners
- DBMS Lab Practice
- Placement Preparation
- Interview Preparation
- Backend Development Learning

---

# Learning Outcomes

By practicing these queries, you will improve:

- NULL handling in SQL
- Data cleaning techniques
- Financial calculations
- Default value handling
- Error prevention logic
- Real-world SQL problem solving

---

# Project Goal

The goal of this project is to provide practical understanding of NULL handling functions in MySQL using real-world business scenarios.
