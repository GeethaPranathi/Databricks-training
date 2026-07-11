# SQL to PySpark Phase 2 – SQL to PySpark Bridge Pack

## Overview

This project bridges the gap between basic SQL queries and real-world PySpark data engineering workflows. It introduces essential Spark DataFrame operations by solving practical business problems using sample customer and order datasets. Each exercise is implemented using both **Spark SQL** and the **PySpark DataFrame API**, helping learners understand how traditional SQL operations translate into distributed processing with Apache Spark.

---

# Objectives

- Bridge the transition from SQL to PySpark
- Learn fundamental PySpark DataFrame operations
- Perform data cleaning before analysis
- Practice joins and aggregations using real-world datasets
- Compare SQL queries with equivalent PySpark transformations
- Build confidence for advanced Spark ETL pipelines

---

# Technologies Used

- Python
- PySpark
- Apache Spark
- Spark SQL
- Google Colab
- Jupyter Notebook

---

# Datasets

### customers.csv

Contains customer information.

Columns include:

- customer_id
- first_name
- last_name
- email
- city
- state

The dataset includes a few missing customer IDs for practicing data cleaning.

---

### orders.csv

Contains customer order transactions.

Columns include:

- order_id
- customer_id
- order_date
- order_amount

Some records contain missing values to simulate real-world datasets.

---

# Project Workflow

## Step 1 – Data Ingestion

Load customer and order datasets into Spark DataFrames.

Tasks include:

- Read CSV files
- Infer schema
- Inspect data
- Validate record counts

---

## Step 2 – Data Cleaning

Prepare datasets for analysis.

Operations include:

- Remove rows with missing customer IDs
- Drop invalid records
- Handle duplicate rows
- Validate schema consistency

---

## Step 3 – SQL to PySpark Translation

Implement each business problem using both:

### Spark SQL

and

### PySpark DataFrame API

This demonstrates how SQL statements map directly to PySpark transformations.

---

# Guided Exercises

## 1. Total Order Amount per Customer

Calculate the total amount spent by each customer.

### Output

| customer_id | total_spend |
|-------------|-------------|

---

## 2. Top 3 Customers by Total Spend

Identify the three customers with the highest total spending.

### Output

| customer_name | total_spend |
|---------------|-------------|

---

## 3. Customers with No Orders

Find customers who have not placed any orders using joins.

### Output

| customer_id | customer_name |
|-------------|---------------|

---

## 4. City-wise Revenue

Calculate the total revenue generated from each city.

### Output

| city | total_revenue |
|------|---------------|

---

## 5. Average Order Amount per Customer

Compute the average transaction amount for each customer.

### Output

| customer_id | average_order |
|-------------|---------------|

---

## 6. Customers with More Than One Order

Identify repeat customers using grouping and filtering.

### Output

| customer_id | order_count |
|-------------|-------------|

---

## 7. Sort Customers by Total Spending

Display customers ordered by total spending in descending order.

### Output

| customer_name | total_spend |
|---------------|-------------|

---

# SQL and PySpark Concepts Covered

### Spark SQL

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- INNER JOIN
- LEFT JOIN
- Aggregate Functions

### PySpark DataFrame API

- read.csv()
- select()
- filter()
- dropna()
- join()
- groupBy()
- agg()
- orderBy()
- sum()
- avg()
- count()

---

# Key Concepts Covered

- Data Ingestion
- Data Cleaning
- SQL to PySpark Conversion
- DataFrame Operations
- Filtering
- Aggregations
- Sorting
- Joins
- Business Analytics
- Customer Analysis

---

# Learning Outcomes

After completing this project, you will be able to:

- Read CSV datasets using PySpark
- Clean and validate structured data
- Perform joins between multiple datasets
- Translate SQL queries into PySpark DataFrame operations
- Apply aggregate functions for business analytics
- Analyze customer purchasing behavior
- Build a strong foundation for Spark-based ETL pipelines

---

# Project Structure

```text
SQL-to-PySpark-Phase2/
│
├── README.md
├── Phase_2_Bridge_Pack.ipynb
│
├── data/
│   ├── customers.csv
│   └── orders.csv
│
├── sql/
│   ├── 01_total_order_amount.sql
│   ├── 02_top_customers.sql
│   ├── 03_customers_without_orders.sql
│   ├── 04_city_revenue.sql
│   ├── 05_average_order.sql
│   ├── 06_repeat_customers.sql
│   └── 07_sort_by_total_spend.sql
│
├── pyspark/
│   ├── 01_total_order_amount.py
│   ├── 02_top_customers.py
│   ├── 03_customers_without_orders.py
│   ├── 04_city_revenue.py
│   ├── 05_average_order.py
│   ├── 06_repeat_customers.py
│   ├── 07_sort_by_total_spend.py
│   └── 08_phase2_pipeline.py
│
└── output/
    └── reports/
```

---



# Sample Business Insights

The project produces several business reports, including:

- Customer Spending Summary
- Top 3 Customers by Revenue
- Customers Without Orders
- City-wise Revenue Analysis
- Average Order Value per Customer
- Repeat Customer Identification
- Customer Spending Rankings

---

# Future Enhancements

- Add Window Functions
- Include JSON and Parquet data sources
- Automate ETL workflows
- Integrate cloud storage (AWS S3, Azure Blob, Google Cloud Storage)
- Build interactive dashboards using Power BI or Tableau
- Scale processing for large datasets using Spark clusters

---

# Project Goal

This project serves as a practical bridge between SQL and PySpark by demonstrating how common SQL operations such as filtering, grouping, joins, sorting, and aggregations can be implemented using the PySpark DataFrame API. It provides a strong foundation for learners preparing for advanced Spark-based data engineering and analytics projects.
