# Week 1 - Day 4

## Objective
The objective of this session was to understand and practice advanced SQL concepts including Window Functions, Common Table Expressions (CTEs), Recursive Queries, Ranking Functions, Running Totals, and Analytical Reporting. The focus was on solving real-world business problems using advanced SQL techniques for ranking, cumulative calculations, trend analysis, and hierarchical data processing.

---

## Tasks Completed
Created relational database tables for:
- Employees
- Customers
- Orders

Defined primary key and foreign key relationships

Inserted sample datasets into all tables

Practiced advanced SQL analytical queries using:
- Window Functions
- CTEs
- Recursive CTEs
- Aggregate analysis
- Ranking functions

Executed queries involving:
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()
- NTILE()
- Running Totals
- Moving Averages
- Recursive Queries

Generated analytical reports including:
- Employee salary rankings
- Department-wise analysis
- Customer spending analysis
- Monthly sales trends
- Employee hierarchy reports

Verified query outputs for correctness

Organized files in a structured GitHub repository format

---

## Topics Covered

### Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- NTILE()
- LAG()
- LEAD()

### Aggregate Window Operations
- Running Totals
- Moving Averages
- Cumulative Sums
- Department Payroll Analysis
- Percentage Contribution Calculations

### Common Table Expressions (CTEs)
- Basic CTEs
- Multiple CTEs
- Recursive CTEs

### Advanced SQL Analysis
- Ranking within departments
- Top-N analysis
- Sequential data analysis
- Monthly sales trend reporting
- Hierarchical employee relationships

### SQL Clauses Used
- WITH
- RECURSIVE
- PARTITION BY
- OVER()
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- JOIN

---

## Platform & Tools Used
- MySQL
- DB Fiddle
- GitHub
- VS Code
- Databricks

---

## Project Files

```bash
schema.sql        -> Table creation and sample data
queries.sql       -> Advanced SQL analytical queries
outputs/          -> Query execution outputs
README.md         -> Documentation for Day 4
```

---

## Learning Outcomes
Through this practice session, I:

- Understood how Window Functions work in SQL
- Learned ranking and numbering techniques using SQL
- Practiced analytical reporting queries
- Learned how to calculate running totals and moving averages
- Improved understanding of partitioned calculations using PARTITION BY
- Learned how to analyze sequential data using LAG() and LEAD()
- Understood the concept of Common Table Expressions (CTEs)
- Practiced Recursive CTEs for hierarchical data analysis
- Improved SQL problem-solving and analytical thinking skills
- Gained practical experience with advanced SQL reporting queries

---

## Sample Queries Practiced

### Window Function Queries
- Assign row numbers to employees based on salary
- Rank employees department-wise
- Calculate dense rankings
- Divide employees into salary quartiles

### Analytical Queries
- Running total of order amounts
- Moving average of last 3 orders
- Department payroll calculations
- Salary percentage contribution analysis

### LAG() and LEAD() Queries
- Find previous order amount
- Find next order amount
- Compare current and previous sales

### CTE Queries
- Total sales per employee
- Customer spending analysis
- Ranking customers based on spending

### Recursive Queries
- Generate numbers using Recursive CTE
- Display employee-manager hierarchy

### Business Reporting Queries
- Find top-performing employees
- Generate monthly sales trend reports
- Calculate percentage sales growth

---

## Challenges Faced
Initially, understanding Window Functions and how PARTITION BY works was slightly challenging. Concepts like running totals, moving averages, recursive queries, and ranking calculations required careful practice and analysis. Recursive CTEs and analytical reporting queries were also more complex compared to basic SQL queries. After executing multiple examples and analyzing outputs step-by-step, the concepts became much easier to understand and apply.

---

## Conclusion
Successfully completed Week 1 - Day 4 advanced SQL practice tasks and developed a strong understanding of analytical SQL concepts including Window Functions, CTEs, Recursive Queries, Ranking Functions, and Trend Analysis. This session significantly improved SQL querying skills and built a strong foundation for advanced database management, data analytics, business intelligence, and data engineering workflows.
