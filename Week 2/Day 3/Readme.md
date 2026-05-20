# Week 2 - Day 3

# MYSQL JOINS PRACTICE QUERIES

This project contains detailed SQL JOIN practice questions using real-world employee, department, and project management scenarios.

The queries help in understanding different types of JOIN operations in MySQL with practical examples.

---

# Topics Covered

## INNER JOIN

Returns only matching records from both tables.

### Example

```sql
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
```

---

## LEFT JOIN

Returns all records from the left table and matching records from the right table.

If no match exists, NULL values are returned.

---

## RIGHT JOIN

Returns all records from the right table and matching records from the left table.

---

## FULL OUTER JOIN

Returns all matching and non-matching rows from both tables.

(MySQL uses `UNION` to simulate FULL OUTER JOIN.)

---

## SELF JOIN

Used when a table joins with itself.

### Example

```sql
SELECT
e.emp_name,
m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;
```

---

# Database Tables Used

## employees

Stores employee information.

### Columns

- emp_id
- emp_name
- manager_id
- dept_id

---

## departments

Stores department details.

### Columns

- dept_id
- dept_name

---

## projects

Stores project assignments.

### Columns

- project_id
- project_name
- emp_id

---

# Concepts Practiced

## Employee & Manager Relationships

- Self joins
- Reporting hierarchy

---

## Employee & Department Mapping

- Department assignment
- Employees without departments

---

## Employee & Project Mapping

- Assigned projects
- Unassigned employees

---

## Aggregate Functions with JOINS

### Functions Used

```sql
COUNT()
GROUP BY
```

### Purpose

- Count employees per department
- Analyze department distribution

---

# Query Categories

The project contains 30 JOIN-based SQL practice questions including:

- Employee-Manager Mapping
- Department Analysis
- Project Assignments
- Employees Without Departments
- Employees Without Projects
- Departments Without Employees
- Salary Record Validation
- Contact Record Validation
- Full Join Simulations

---

# SQL Concepts Used

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- UNION
- GROUP BY
- COUNT()
- WHERE
- IS NULL

---

# Recommended Database

- MySQL 8+
- MariaDB

---

# Suitable For

- SQL Beginners
- DBMS Lab Practice
- Interview Preparation
- Placement Training
- Backend Development Practice

---

# Learning Outcomes

After practicing these queries, you will improve:

- JOIN operations
- Self joins
- Multi-table querying
- NULL handling
- Relationship mapping
- Real-world SQL problem solving

---

# Project Goal

The goal of this project is to provide practical understanding of MySQL JOIN operations using employee-management business scenarios.
