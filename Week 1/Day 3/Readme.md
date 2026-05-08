# Week 1 - Day 3

## Objective
The objective of this session was to understand and practice SQL JOIN operations by working with multiple related tables. The focus was on learning how relational databases combine data across tables using different types of joins and handling missing or unmatched records effectively.

---

## Tasks Completed
- Created relational database tables for:
  - Students
  - Courses
  - Instructors
  - Enrollments
- Defined primary key and foreign key relationships
- Inserted sample datasets into all tables
- Practiced multiple JOIN operations using real-world scenarios
- Executed queries involving:
  - `INNER JOIN`
  - `LEFT JOIN`
  - `RIGHT JOIN`
  - Simulated `FULL OUTER JOIN`
  - `CROSS JOIN`
- Retrieved unmatched records using joins and NULL conditions
- Verified query outputs for correctness
- Organized files in a structured GitHub repository format

---

## Topics Covered

### SQL JOIN Operations
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- Simulating `FULL OUTER JOIN` in MySQL using `UNION`
- `CROSS JOIN`

### Filtering & Conditions
- `WHERE`
- `IS NULL`
- `UNION`

### Database Relationships
- One-to-Many Relationships
- Foreign Key Constraints
- Linking Multiple Tables

---

## Platform & Tools Used
- MySQL
- DB Fiddle
- GitHub
- VS Code

---

## Project Files
```bash
schema.sql        -> Table creation and sample data
queries.sql       -> SQL JOIN practice queries
outputs/          -> Query execution outputs
README.md         -> Documentation for Day 3
```

---

## Learning Outcomes
Through this practice session, I:

- Understood how relational tables are connected using foreign keys
- Learned how different JOIN operations work
- Practiced retrieving matched and unmatched records
- Improved understanding of relational database design
- Learned how to combine multiple tables into a single query
- Understood how to simulate `FULL OUTER JOIN` in MySQL
- Gained practical experience with real-world SQL reporting queries

---

## Sample Queries Practiced

### JOIN Queries
- Display all students and their enrolled courses
- Display instructors and the courses they teach
- Display student, course, and instructor information together

### LEFT JOIN Queries
- Find students not enrolled in any course
- Find courses with no enrollments
- Find courses without instructors

### RIGHT JOIN Queries
- Display students and enrollment information using `RIGHT JOIN`

### FULL OUTER JOIN Simulation
- Combined unmatched rows from both tables using:
  - `LEFT JOIN`
  - `RIGHT JOIN`
  - `UNION`

### CROSS JOIN
- Generated all possible student-course combinations

---

## Challenges Faced
Initially, understanding how different JOIN operations return matched and unmatched data was slightly confusing. Another challenge was that MySQL does not support `FULL OUTER JOIN` directly, so learning how to simulate it using `LEFT JOIN`, `RIGHT JOIN`, and `UNION` required additional practice. After executing multiple queries and analyzing outputs carefully, the concepts became much clearer.

---

## Conclusion
Successfully completed Week 1 - Day 3 SQL JOIN practice tasks and developed a strong understanding of relational database joins and table relationships. This session improved practical SQL querying skills and built a strong foundation for advanced SQL concepts, database management, and data engineering workflows.
