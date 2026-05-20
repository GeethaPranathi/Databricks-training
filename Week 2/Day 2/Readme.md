# Week 2 - Day 2

# DATE & TIMESTAMP FUNCTIONS IN MYSQL

## Objective

The objective of this session was to learn and practice Date and Timestamp functions in MySQL using real-world business scenarios. The focus was on handling dates, extracting date parts, performing date arithmetic, formatting timestamps, calculating date differences, and implementing time-based filtering queries for reporting and analytics.

---

## Tasks Completed

- Created and populated the `orders` table with sample data
- Practiced MySQL Date and Timestamp functions
- Extracted year, month, and day from dates
- Implemented weekend and weekday detection queries
- Performed date arithmetic using `DATE_ADD()` and `DATE_SUB()`
- Calculated delivery durations using `DATEDIFF()` and `TIMESTAMPDIFF()`
- Formatted dates and timestamps using `DATE_FORMAT()`
- Converted string values into date format using `STR_TO_DATE()`
- Implemented financial year calculation logic using `CASE`
- Built real-time filtering queries for recent and current orders
- Verified query outputs for correctness
- Organized SQL scripts and documentation in GitHub repository structure

---

## Topics Covered

### Current Date & Time Functions

- `CURDATE()`
- `CURTIME()`
- `NOW()`
- `CURRENT_TIMESTAMP`

### Date Extraction Functions

- `YEAR()`
- `MONTH()`
- `DAY()`
- `EXTRACT()`

### Date Name Functions

- `MONTHNAME()`
- `DAYNAME()`

### Weekday & Weekend Functions

- `WEEKDAY()`
- `DAYOFWEEK()`

### Date Arithmetic Functions

- `DATE_ADD()`
- `DATE_SUB()`

### Date Difference Functions

- `DATEDIFF()`
- `TIMESTAMPDIFF()`

### Month Handling Functions

- `LAST_DAY()`
- First day calculation using `DATE_SUB()`

### Date Formatting Functions

- `DATE_FORMAT()`
- `STR_TO_DATE()`

### Conditional Logic

- `CASE` statement
- Financial year calculation

---

## Query Operations Practiced

- Extracting year, month, and day from dates
- Identifying weekends and weekdays
- Adding and subtracting dates
- Calculating delivery durations
- Formatting timestamps
- Filtering records based on month
- Finding first and last day of month
- Financial year calculations
- Real-time order filtering

---

## Platform & Tools Used

- MySQL
- DB Fiddle
- Databricks
- GitHub
- VS Code

---

## Project Files

```text
schema.sql        -> Table creation and sample data
queries.sql       -> Date & Timestamp practice queries
outputs/          -> Query execution outputs
README.md         -> Documentation for Day 2
