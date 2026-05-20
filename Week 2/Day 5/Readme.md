# Week 2 - Day 5

# Number Manipulation Functions & REGEX Functions in MySQL

This project explains important Numeric Functions and REGEX Functions in MySQL using practical business and text-processing examples.

The queries demonstrate how to perform:

- Numeric calculations
- Salary analysis
- Decimal formatting
- Random number generation
- Maximum and minimum comparisons
- Pattern matching
- Email parsing
- Phone number extraction
- Text validation
- String manipulation

---

# Tables Used

## employee_salary

Stores employee salary details.

Columns:

- emp_id
- emp_name
- base_salary
- bonus
- tax_percent
- experience_years

---

## regex_practice

Stores text, email, and phone pattern data.

Columns:

- id
- full_text
- email
- phone
- mixed_value

---

# Topics Covered

---

# Part 1 – Number Manipulation Functions

---

## 1. ABS() – Absolute Value

Returns the positive value of a number.

Example:

```sql
SELECT ABS(-100);
```

Purpose:

- Financial calculations
- Error handling
- Distance calculations

---

## 2. ROUND() – Round Numbers

Rounds values to specified decimal places.

Example:

```sql
ROUND(base_salary,0)
ROUND(base_salary,2)
```

Purpose:

- Salary rounding
- Financial reporting
- Precision handling

---

## 3. CEIL() / CEILING()

Rounds values upward.

Example:

```sql
CEIL(base_salary)
```

Purpose:

- Billing calculations
- Tax computations

---

## 4. FLOOR()

Rounds values downward.

Example:

```sql
FLOOR(base_salary)
```

Purpose:

- Budget analysis
- Lower-bound calculations

---

## 5. TRUNCATE()

Removes decimal values without rounding.

Example:

```sql
TRUNCATE(base_salary,1)
```

Purpose:

- Precision control
- Decimal trimming

---

## 6. MOD()

Returns remainder after division.

Example:

```sql
MOD(experience_years,2)
```

Purpose:

- Odd/even checks
- Cyclic operations

---

## 7. POWER() / POW()

Raises numbers to a specified power.

Example:

```sql
POWER(2,3)
POW(5,2)
```

Purpose:

- Growth calculations
- Mathematical analysis

---

## 8. SQRT()

Returns square root.

Example:

```sql
SQRT(64)
```

Purpose:

- Statistical calculations
- Mathematical processing

---

## 9. SIGN()

Returns:

| Value | Meaning |
|---|---|
| -1 | Negative |
| 0 | Zero |
| 1 | Positive |

Example:

```sql
SIGN(base_salary)
```

Purpose:

- Number validation
- Positive/negative detection

---

## 10. RAND()

Generates random values.

Example:

```sql
SELECT RAND();
```

Purpose:

- Random sampling
- Simulations
- Testing

---

## 11. FORMAT()

Formats numbers with commas and decimals.

Example:

```sql
FORMAT(base_salary,2)
```

Purpose:

- Financial reporting
- Salary formatting

---

## 12. GREATEST()

Returns maximum value.

Example:

```sql
GREATEST(base_salary, IFNULL(bonus,0))
```

Purpose:

- Salary comparison
- Maximum value analysis

---

## 13. LEAST()

Returns minimum value.

Example:

```sql
LEAST(base_salary, IFNULL(bonus,0))
```

Purpose:

- Minimum value analysis
- Lowest amount detection

---

# Part 2 – REGEX Functions in MySQL

This section explains Regular Expressions (REGEX) using practical text extraction and validation examples.

---

## REGEXP

Used for pattern matching in MySQL.

Syntax:

```sql
column_name REGEXP 'pattern'
```

Purpose:

- Pattern matching
- Data validation
- Text extraction

---

# REGEX Queries Covered

---

## Q1 – Extract Numbers from Beginning

Pattern:

```sql
^[0-9]+
```

Purpose:

- Detect numeric values at start

---

## Q2 – Extract Numbers from Ending

Pattern:

```sql
[0-9]+$
```

Purpose:

- Detect ending digits

---

## Q3 – Extract First Character

Pattern:

```sql
^.
```

Purpose:

- Get first character

---

## Q4 – Extract Last Character

Pattern:

```sql
.$
```

Purpose:

- Get last character

---

## Q5 – Extract Exactly Two Digits

Pattern:

```sql
[0-9]{2}
```

Purpose:

- Match exactly two digits

---

## Q6 – Extract Single Digit

Pattern:

```sql
[0-9]
```

Purpose:

- Detect numeric characters

---

## Q7 – Extract Country Code

Purpose:

- Extract phone country code

---

## Q8 – Extract Numeric Portion

Pattern:

```sql
[0-9]+
```

Purpose:

- Extract digits from mixed text

---

## Q9 – Extract Email Username

Purpose:

- Extract text before @ symbol

---

## Q10 – Extract Domain After @

Purpose:

- Extract domain section

---

## Q11 – Extract Domain Name

Purpose:

- Extract domain only

Examples:

```text
gmail
yahoo
outlook
```

---

## Q12 – Extract Email Extension

Purpose:

- Extract extension after last dot

Examples:

```text
com
in
uk
```

---

## Q13 – Extract Alphabetic Sequence

Pattern:

```sql
[A-Za-z]+
```

Purpose:

- Extract alphabetic characters

---

## Q14 – Extract Numeric Sequence

Pattern:

```sql
[0-9]+
```

Purpose:

- Extract continuous digits

---

## Q15 – Extract First 3 Characters

Purpose:

- Extract prefixes

---

## Q16 – Extract Last 2 Characters

Purpose:

- Extract suffixes

---

## Q17 – Extract Employee Number

Purpose:

- Extract employee identifiers

---

## Q18 – Extract Country Code from End

Purpose:

- Extract country suffix codes

Examples:

```text
IN
US
UK
AU
```

---

## Q19 – Extract Text Between Underscores

Purpose:

- Extract middle text sections

---

## Q20 – Extract Digits After +

Purpose:

- Extract phone country digits

---

# Common REGEX Symbols

| Symbol | Meaning |
|---|---|
| ^ | Start of string |
| $ | End of string |
| + | One or more |
| . | Any character |
| [] | Character group |
| {} | Exact count |
| () | Grouping |

---

# SQL Concepts Used

```sql
ABS()
ROUND()
CEIL()
FLOOR()
TRUNCATE()
MOD()
POWER()
POW()
SQRT()
SIGN()
RAND()
FORMAT()
GREATEST()
LEAST()
IFNULL()
REGEXP
LEFT()
RIGHT()
SUBSTRING()
SUBSTRING_INDEX()
```

---

# Real-Time Business Use Cases

These queries simulate:

- Payroll systems
- Financial reporting
- Tax calculations
- Salary analytics
- Email validation
- Phone parsing
- Employee code extraction
- Data cleaning
- Pattern matching
- Text processing

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

- Numeric calculations in SQL
- Mathematical function usage
- REGEX pattern writing
- Text extraction
- Email parsing
- Phone number parsing
- Financial analysis
- Real-world SQL problem solving

---

# Project Goal

The goal of this project is to provide hands-on practice with MySQL Numeric Functions and REGEX Functions using real-world business and text-processing scenarios.
