# Week 1 - Day 5

## Objective
The objective of this session was to learn and practice SQL Window Functions and ranking operations for analytical data processing. The focus was on understanding how SQL can perform advanced row-wise calculations, rankings, cumulative analysis, and comparison operations using employee and order datasets.

---

# Tasks Completed

- Created and populated:
  - employees table
  - orders table

- Practiced ranking functions:
  - ROW_NUMBER()
  - RANK()
  - DENSE_RANK()

- Retrieved top-performing employees using ranking queries

- Implemented department-wise ranking using PARTITION BY

- Calculated:
  - Highest salary by department
  - Running totals
  - Cumulative sales

- Practiced analytical functions:
  - LAG()
  - LEAD()

- Compared current and previous order amounts

- Verified outputs for correctness

- Organized SQL scripts and documentation in GitHub repository structure

---

# Topics Covered

## Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()

## Analytical Functions
- LAG()
- LEAD()

## SQL Concepts
- PARTITION BY
- ORDER BY
- Running Totals
- Cumulative Sum

---

# Queries Practiced

1. ROW_NUMBER by salary
2. RANK by salary
3. DENSE_RANK by salary
4. Top 3 highest paid employees
5. Rank employees within department
6. Highest salary in each department
7. Running total of orders
8. Cumulative sales per employee
9. Previous order amount using LAG
10. Next order amount using LEAD

---

# Platform & Tools Used

- MySQL
- DB Fiddle
- Databricks
- GitHub
- VS Code

---

# Project Files

```text
schema.sql        -> Table creation and sample data
queries.sql       -> SQL analytical queries
outputs/          -> Query execution outputs
README.md         -> Documentation for Day 5
```

---

# Learning Outcomes

Through this session, I:

- Learned how SQL Window Functions work
- Understood row-based analytical calculations
- Practiced employee salary ranking
- Learned cumulative calculations using SQL
- Understood customer order comparisons
- Improved SQL analytical querying skills

---

# Challenges Faced

Initially, understanding how Window Functions operate across partitions and ordered datasets was slightly challenging. After practicing multiple examples and observing outputs carefully, the concepts became much easier to understand.

---

# Conclusion

Successfully completed Week 1 - Day 5 tasks and developed a strong understanding of SQL Window Functions, ranking operations, and analytical calculations.
