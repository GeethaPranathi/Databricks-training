# WEEK 3 – DAY 3  
# RANK() FUNCTIONS IN MYSQL

This project explains the RANK() window function in MySQL using employee and order datasets.

The queries demonstrate:

- Salary ranking
- Department-wise ranking
- Joining date ranking
- Order amount ranking

---

# What is RANK()?

RANK() assigns ranking values to rows.

Duplicate values receive the same rank, and gaps occur in ranking.

Syntax:

```sql
RANK() OVER(
    ORDER BY column_name
)
```

---

# Topics Covered

## 1. Employee Salary Ranking

Rank employees based on highest salary.

## 2. Department-wise Salary Ranking

Rank employees within departments.

## 3. Joining Date Ranking

Assign ranks based on latest joining dates.

## 4. Order Amount Ranking

Rank orders based on highest amount.

---

# SQL Concepts Used

```sql
RANK()
OVER()
PARTITION BY
ORDER BY
```

---

# Real-Time Use Cases

- Employee performance analysis
- Salary comparison
- Order analysis
- HR reporting systems

---

# Recommended Database

- MySQL 8+
- MariaDB

---

# Suitable For

- SQL Beginners
- Placement Preparation
- Window Function Practice
- DBMS Lab Practice

---

# Learning Outcomes

By practicing these queries, you will improve:

- Ranking logic
- Analytical SQL
- Department-wise reporting
- Window function skills

---

# Project Goal

The goal of this project is to provide practical experience with RANK() functions using business datasets.
