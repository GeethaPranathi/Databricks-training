# Week 1 - Day 5

## Objective
The objective of this session was to learn and practice advanced SQL concepts including Window Functions, Common Table Expressions (CTEs), Ranking Functions, Running Totals, Analytical Queries, and Recursive Queries. The session focused on performing advanced data analysis operations using SQL for reporting and business insights.

---

# Tasks Completed

- Created relational database tables:
  - employees
  - orders

- Inserted sample datasets into all tables

- Practiced advanced SQL analytical queries

- Implemented ranking functions:
  - ROW_NUMBER()
  - RANK()
  - DENSE_RANK()

- Worked with partitioning using:
  - PARTITION BY

- Practiced advanced calculations:
  - Running totals
  - Moving averages
  - Cumulative sales
  - Salary contribution percentages

- Used analytical functions:
  - LAG()
  - LEAD()
  - NTILE()

- Practiced Common Table Expressions (CTEs)

- Generated customer spending and employee sales reports

- Practiced recursive query concepts

- Verified query outputs for correctness

- Organized SQL scripts and documentation in GitHub repository structure

---

# Topics Covered

## Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- NTILE()
- LAG()
- LEAD()

## Analytical SQL
- Running Totals
- Moving Average
- Cumulative Sum
- Salary Ranking
- Department-wise Analysis

## Partitioning
- PARTITION BY
- Department-based calculations
- Customer-wise order analysis

## Common Table Expressions (CTEs)
- Basic CTEs
- Multiple CTEs
- Recursive CTEs

## Advanced SQL Operations
- Salary comparisons
- Ranking within groups
- Percentage contribution calculations
- Monthly sales trend analysis

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
queries.sql       -> Advanced SQL practice queries
outputs/          -> Query execution outputs
README.md         -> Documentation for Day 4
```

---

# Learning Outcomes

Through this practice session, I:

- Understood advanced SQL analytical concepts
- Learned how window functions work
- Practiced ranking and partitioning operations
- Learned how to calculate running totals and moving averages
- Understood customer and employee sales analysis
- Learned how Common Table Expressions simplify complex queries
- Practiced recursive SQL queries
- Improved SQL problem-solving and reporting skills
- Gained practical experience with business reporting queries

---

# Sample Queries Practiced

## Ranking Functions
- Assign row numbers to employees by salary
- Rank employees based on salary
- Find second-highest salary in each department

## Window Functions
- Running total of order amounts
- Cumulative sales per employee
- Moving average of orders
- Salary percentage contribution

## LAG & LEAD
- Previous order amount
- Next order amount
- Difference between current and previous order

## CTE Queries
- Employee sales reports
- Customer spending rankings
- Orders above average amount

## Recursive Queries
- Generate numbers from 1 to 10

## Business Reports
- Monthly sales trends
- Department payroll calculations
- Top-performing employees by department

---

# Challenges Faced

Initially, understanding analytical SQL concepts such as Window Functions, PARTITION BY, and ranking operations was slightly challenging. Another difficulty was handling compatibility issues because older MySQL versions do not support advanced features like window functions and recursive CTEs. After practicing multiple examples and understanding alternative approaches using subqueries and variables, the concepts became much clearer.

---

# Conclusion

Successfully completed Week 1 - Day 4 advanced SQL practice tasks and developed a strong understanding of analytical SQL concepts. This session significantly improved practical SQL querying skills and built a strong foundation for advanced database querying, reporting systems, data analytics, and data engineering workflows.
