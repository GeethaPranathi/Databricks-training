# WEEK 3 – DAY 1  
# ROW_NUMBER() FUNCTIONS IN MYSQL

This project explains the ROW_NUMBER() window function in MySQL using employee management examples.

The queries demonstrate:

- Unique row numbering
- Salary-based ordering
- Department-wise numbering
- Joining date ordering

---

# What is ROW_NUMBER()?

ROW_NUMBER() assigns a unique sequential number to each row.

Syntax:

```sql
ROW_NUMBER() OVER(
    ORDER BY column_name
)
```

---

# Topics Covered

## 1. Row Number Based on Highest Salary

Assign unique row numbers based on salary in descending order.

## 2. Department-wise Salary Row Number

Assign row numbers within each department based on highest salary.

## 3. Latest Joining Date Row Number

Assign row numbers based on latest joining date.

## 4. Department-wise Earliest Joining Date

Assign row numbers within departments using earliest joining date.

---

# SQL Concepts Used

```sql
ROW_NUMBER()
OVER()
PARTITION BY
ORDER BY
```

---

# Real-Time Use Cases

- Employee ranking
- Payroll analysis
- Department-wise employee ordering
- HR reporting

---

# Recommended Database

- MySQL 8+
- MariaDB

---

# Suitable For

- SQL Beginners
- Window Function Practice
- Placement Preparation
- DBMS Lab Practice

---

# Learning Outcomes

By practicing these queries, you will improve:

- Window function usage
- Department-wise analysis
- Sorting and ranking
- SQL analytical skills

---

# Project Goal

The goal of this project is to provide hands-on practice with ROW_NUMBER() functions using real-world employee datasets.
