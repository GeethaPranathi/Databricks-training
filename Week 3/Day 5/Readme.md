# WEEK 3 – DAY 5  
# RANK() & DENSE_RANK() FUNCTIONS IN MYSQL

This project explains ranking functions in MySQL using employee and order datasets.

The queries demonstrate:

- Order date ranking
- Dense salary ranking
- Department-wise dense ranking

---

# What is DENSE_RANK()?

DENSE_RANK() assigns ranking values without gaps.

Duplicate values receive the same rank.

Syntax:

```sql
DENSE_RANK() OVER(
    ORDER BY column_name
)
```

---

# Topics Covered

## 1. Order Date Ranking

Rank orders within cities using order dates.

## 2. Dense Salary Ranking

Assign dense ranks to employees based on highest salary.

## 3. Department-wise Dense Salary Ranking

Assign dense ranks within departments.

---

# SQL Concepts Used

```sql
RANK()
DENSE_RANK()
OVER()
PARTITION BY
ORDER BY
```

---

# Real-Time Use Cases

- Employee ranking systems
- Order tracking
- Dense analytical ranking
- HR analytics

---

# Recommended Database

- MySQL 8+
- MariaDB

---

# Suitable For

- SQL Beginners
- Placement Preparation
- Window Function Practice
- DBMS Lab Work

---

# Learning Outcomes

By practicing these queries, you will improve:

- Ranking function usage
- Dense ranking concepts
- Analytical SQL skills
- Data ordering techniques

---

# Project Goal

The goal of this project is to provide practical understanding of ranking functions in MySQL using business datasets.
