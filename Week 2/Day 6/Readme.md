# Week 2 - Day 6

# REGEX FOUNDATION & SQL DATA QUALITY PROJECT

This project combines:

1. REGEX Foundation Concepts in MySQL  
2. SQL Data Generation & Data Quality Analysis  

using beginner-friendly and real-world business examples.

---

# PROJECT OVERVIEW

This project helps in understanding:

- REGEX pattern matching
- Email validation
- Phone number validation
- String extraction
- Data cleaning
- Duplicate detection
- NULL handling
- Data quality analysis
- ETL preprocessing concepts

---

# PART 1 – REGEX FOUNDATION IN MYSQL

---

# What is REGEX?

REGEX (Regular Expression) is a pattern-matching technique used to search, validate, and extract text.

In MySQL:

```sql
REGEXP
```

is used for pattern matching.

---

# REGEX Concepts Covered

---

## 1. Extract Digits

Pattern:

```sql
[0-9]
```

Purpose:

- Matches any digit from 0–9

---

## 2. Extract Alphabets

Pattern:

```sql
[A-Za-z]
```

Purpose:

- Matches uppercase and lowercase letters

---

## 3. Start of String (^)

Pattern:

```sql
^[0-9]
```

Purpose:

- Checks whether string starts with digit

Example:

| Input | Result |
|---|---|
| 123abc | Match |
| abc123 | No Match |

---

## 4. End of String ($)

Pattern:

```sql
[0-9]$
```

Purpose:

- Checks whether string ends with digit

---

## 5. Exact Character Count {}

Pattern:

```sql
[0-9]{2}
```

Purpose:

- Match exactly 2 digits

---

## 6. One or More Characters (+)

Pattern:

```sql
[0-9]+
```

Purpose:

- Match continuous digits

---

## 7. Principle of Continuity

REGEX extracts continuous matching patterns.

Example:

Input:

```text
123abc567
```

Pattern:

```sql
[0-9]+
```

Output:

```text
123
```

---

## 8. Extract Everything

Pattern:

```sql
[0-9a-zA-Z]+
```

Purpose:

- Extract letters and numbers together

---

## 9. Extract Digits From Middle

Pattern:

```sql
[0-9]+
```

Purpose:

- Extract digits from middle of string

---

# EMAIL REGEX CONCEPTS

---

## Email Structure

```text
username@domain.extension
```

Example:

```text
karthik.kumar44@gmail.com
```

---

## Username Validation

Allowed characters:

- a-z
- A-Z
- 0-9
- .
- _
- -

Pattern:

```sql
[a-zA-Z0-9._-]+
```

---

## Domain Validation

Pattern:

```sql
[a-zA-Z0-9]+
```

Examples:

```text
gmail
infosys
yahoo
```

---

## Extension Validation

Pattern:

```sql
[a-zA-Z]{2,3}
```

Examples:

```text
com
org
ai
```

---

# Final Email Validation REGEX

```sql
^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}$
```

Purpose:

- Complete email validation

---

# Phone Number Validation

Example:

```text
+91-9989454737
```

Pattern:

```sql
^\\+91-[0-9]{10}$
```

Purpose:

- Validate Indian phone numbers

---

# Removing Unwanted Characters

Function Used:

```sql
REPLACE()
```

Example:

```sql
REPLACE('@gmail.com','@','')
```

Output:

```text
gmail.com
```

---

# Common REGEX Symbols

| Symbol | Meaning |
|---|---|
| ^ | Start of string |
| $ | End of string |
| + | One or more |
| [] | Character set |
| {} | Exact count |
| . | Any character |
| \\ | Escape special character |

---

# SQL Functions Used

```sql
REGEXP
REPLACE()
SUBSTRING_INDEX()
```

---

# Real-Time Business Use Cases

These queries simulate:

- Email validation
- Phone validation
- Username validation
- Domain extraction
- Data cleaning
- Text pattern analysis

---

# PART 2 – SQL DATA GENERATION & DATA QUALITY PROJECT

---

# Technologies Used

- MySQL
- SQL

---

# Project Objective

The goal of this project is to:

- Create raw transactional datasets
- Simulate dirty business data
- Practice data quality validation
- Learn ETL preprocessing concepts
- Understand Bronze Layer ingestion

---

# Table Used

## flipkart_raw_data

| Column | Description |
|---|---|
| order_id | Unique order identifier |
| customer_id | Customer identifier |
| product | Product name |
| category | Product category |
| city | Customer city |
| order_date | Order date |
| amount | Sales amount |
| quantity | Quantity purchased |

---

# Real-Time Data Problems Included

The dataset intentionally includes multiple real-world problems.

---

## 1. NULL Values

NULL values are inserted into:

- amount
- city

Purpose:

- Practice NULL handling
- Data cleaning exercises

Example:

```sql
WHERE amount IS NULL
```

---

## 2. Duplicate Records

Duplicate order IDs are generated.

Purpose:

- Deduplication practice
- Duplicate detection

Example:

```sql
GROUP BY order_id
HAVING COUNT(*) > 1
```

---

## 3. Negative Values

Negative amounts are included.

Purpose:

- Simulate invalid transactions
- Fraud detection scenarios

Example:

```sql
WHERE amount < 0
```

---

## 4. Updated Records

Same order_id appears with different dates.

Purpose:

- Simulate updates
- Change Data Capture (CDC)

Example:

```sql
COUNT(DISTINCT order_date)
```

---

# SQL Concepts Used

## CREATE TABLE

Creates raw transaction table.

---

## INSERT INTO

Adds sample business records.

---

## COUNT()

Counts total records and duplicates.

---

## GROUP BY

Groups records by order_id.

---

## HAVING

Filters grouped records.

---

## IS NULL

Finds missing values.

---

# Queries Included

The project includes queries for:

- Total record count
- NULL value detection
- Negative value detection
- Duplicate record identification
- Updated record analysis

---

# Example Queries

## Find NULL Amounts

```sql
SELECT *
FROM flipkart_raw_data
WHERE amount IS NULL;
```

---

## Find Negative Amounts

```sql
SELECT *
FROM flipkart_raw_data
WHERE amount < 0;
```

---

## Find Duplicate Order IDs

```sql
SELECT
order_id,
COUNT(*)
FROM flipkart_raw_data
GROUP BY order_id
HAVING COUNT(*) > 1;
```

---

## Find Updated Records

```sql
SELECT
order_id,
COUNT(DISTINCT order_date)
FROM flipkart_raw_data
GROUP BY order_id
HAVING COUNT(DISTINCT order_date) > 1;
```

---

# Real-Time Data Engineering Use Cases

This project simulates:

- Bronze Layer ingestion
- Raw transaction processing
- Data quality validation
- ETL preprocessing
- Duplicate handling
- Incremental updates

---

# Skills Improved

By practicing this project, you will improve:

- SQL querying
- Data cleaning
- Duplicate handling
- NULL handling
- Data quality analysis
- ETL understanding
- REGEX pattern matching
- Email validation
- String extraction

---

# Recommended Database

- MySQL 8+
- MariaDB

---

# Suitable For

- SQL Beginners
- Regex Beginners
- DBMS Lab Practice
- Data Engineering Beginners
- Placement Preparation
- Backend Development Learning

---

# Learning Outcomes

After completing this project, you will understand:

- REGEX fundamentals
- Email and phone validation
- Pattern matching in SQL
- How raw datasets are created
- How dirty data appears in systems
- How to identify duplicates
- How to detect NULL values
- How real ETL preprocessing works

---

# Project Goal

The goal of this project is to provide hands-on practice with:

- REGEX concepts in MySQL
- SQL data generation
- Data quality validation
- Real-world ETL preprocessing scenarios

using practical business examples.
