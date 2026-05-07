# Week 1 - Day 2 SQL Practice

## Tasks Completed
- Practiced sorting data using `ORDER BY`
- Performed different types of `JOIN` operations
- Worked with aggregate functions and grouped results using `GROUP BY`
- Solved advanced SQL queries using subqueries
- Implemented filtering using `HAVING`, `IN`, `ALL`, and comparison operators
- Retrieved employee, department, and project-related analytical data

---

## Topics Covered
- `ORDER BY`
- `INNER JOIN`
- `LEFT JOIN`
- `GROUP BY`
- `HAVING`
- Subqueries
- Aggregate Functions:
  - `SUM()`
  - `AVG()`
  - `COUNT()`
  - `MIN()`
  - `MAX()`

---

## Key Learnings
- Learned how to sort records in ascending and descending order
- Understood how tables are linked using foreign keys
- Practiced joining multiple tables to fetch meaningful combined data
- Improved understanding of aggregate functions for data analysis
- Learned how subqueries help in advanced filtering and comparisons
- Gained hands-on experience solving real-world SQL problems

---

## Sample Queries Practiced
- Employees ordered by salary, age, and hire date
- Employees with highest, second highest, and third highest salaries
- Employees earning above department average salary
- Departments with highest average salary
- Departments without employees
- Employees not linked to any projects
- Department-wise employee and project counts
- Employees hired on the same date
- Employees older than all employees in HR department

---

## Example SQL Queries

### Find Employees with Highest Salary
```sql
select *
from Employee
where salary = (select max(salary) from Employee);
```

### Find Second Highest Salary
```sql
select max(salary)
from Employee
where salary < (select max(salary) from Employee);
```

### Employee Names with Department Names
```sql
select e.name, d.name
from Employee e
join Department d
on e.department_id = d.department_id;
```

### Departments with No Employees
```sql
select d.name
from Department d
left join Employee e
on d.department_id = e.department_id
where e.emp_id is null;
```

---

## Tools Used
- MySQL
- DB-Fiddle
- GitHub

---

## Outcome
Successfully completed advanced SQL practice involving sorting, joins, grouping, aggregation, and subqueries. Improved SQL problem-solving skills and understanding of relational database operations.
