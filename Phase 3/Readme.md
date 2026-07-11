# SQL to PySpark Phase 3: Final ETL & Pipeline

A practice project showcasing **SQL to PySpark migration** by implementing complete ETL workflows including data ingestion, cleaning, transformation, aggregation, window functions, joins, and a reusable ETL pipeline using Spark Playground sample datasets.

---

# Project Structure

```text
sql-to-pyspark-phase3/
│
├── README.md                           # Documentation
├── .gitignore                          # Ignore unnecessary files
├── pyspark_etl_pipeline.ipynb          # Google Colab Notebook
│
├── data/
│   ├── customers.csv
│   ├── sales.csv
│   ├── products.csv
│   └── orders.json
│
├── sql/
│   ├── 01_ingestion_inspection.sql
│   ├── 02_cleaning_nulls.sql
│   ├── 03_daily_sales.sql
│   ├── 04_city_revenue.sql
│   ├── 05_repeat_customers.sql
│   ├── 06_highest_spender_per_city.sql
│   └── 07_final_reporting_table.sql
│
└── pyspark/
    ├── 01_ingestion_inspection.py
    ├── 02_cleaning_nulls.py
    ├── 03_daily_sales.py
    ├── 04_city_revenue.py
    ├── 05_repeat_customers.py
    ├── 06_highest_spender_per_city.py
    ├── 07_final_reporting_table.py
    └── 08_full_etl_pipeline.py
```

---

# Google Colab Execution

Upload **pyspark_etl_pipeline.ipynb** into Google Colab.

Run every cell sequentially.

The notebook automatically:

- Installs PySpark
- Creates sample CSV and JSON datasets
- Demonstrates SQL and PySpark implementations side-by-side
- Executes the reusable production-ready ETL pipeline

---

# Dataset Overview

### customers.csv

Contains customer information.

Columns:

- customer_id
- first_name
- last_name
- email
- phone_number
- address
- city
- state
- zip_code

Contains intentional missing values in **city** and **state** for cleaning exercises.

---

### sales.csv

Contains sales transactions.

Columns:

- sale_id
- customer_id
- product_id
- sale_date
- quantity
- total_amount

Includes transactions from **January–March 2024**.

---

### products.csv

Contains product catalog.

Example categories:

- Electronics
- Stationery
- Clothing
- Sports
- Home
- Personal Care

---

### orders.json

JSON Lines formatted order dataset containing transactional records used for JSON ingestion practice.

---

# Core ETL Stages

## 1. Ingestion & Schema Inspection

### SQL

- Preview data
- Count records
- Inspect metadata

### PySpark

Read CSV files

```python
spark.read.format("csv") \
.option("header","true") \
.option("inferSchema","true") \
.load("data/customers.csv")
```

Read JSON files

```python
spark.read.format("json") \
.load("data/orders.json")
```

---

## 2. Identifying & Cleaning Nulls

### SQL

Identify null values

```sql
SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END)
```

Remove nulls

```sql
WHERE city IS NOT NULL
```

Replace nulls

```sql
COALESCE(city,'Unknown')
```

### PySpark

Count null values

```python
df.select([
count(when(col(c).isNull(), c)).alias(c)
for c in df.columns
])
```

Drop nulls

```python
df.dropna(subset=["city"])
```

Fill missing values

```python
df.fillna({
"city":"Unknown",
"state":"Unknown"
})
```

---

## 3. Business Aggregations & Transformations

### Daily Sales

Pipeline:

- Remove invalid records
- Group by sale date
- Calculate

Metrics:

- Total Orders
- Total Quantity
- Revenue
- Average Order Value (AOV)

---

### City Revenue

Pipeline:

- Join Customers
- Join Sales
- Remove missing cities
- Aggregate revenue per city

---

### Repeat Customers

Identify customers with two or more purchases.

Equivalent SQL:

```sql
HAVING COUNT(*) >= 2
```

Equivalent PySpark:

```python
groupBy("customer_id") \
.count() \
.filter(col("count") >= 2)
```

---

### Highest Spender Per City

Uses Window Functions.

PySpark:

```python
Window.partitionBy("city") \
.orderBy(desc("total_spent"))
```

Apply

```python
row_number()
```

to retrieve the top customer in each city.

---

### Final Reporting Table

Generate executive reporting tables including

- Customer Spend
- Category Revenue
- State Revenue
- City Revenue
- Product Performance

using joins and aggregations.

---

# SQL Topics Covered

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- INNER JOIN
- LEFT JOIN
- COALESCE
- CASE WHEN
- Aggregate Functions
- Window Functions
- CTEs

---

# PySpark Topics Covered

- SparkSession
- DataFrame API
- read.format()
- inferSchema
- dropna()
- fillna()
- filter()
- select()
- withColumn()
- groupBy()
- agg()
- join()
- orderBy()
- Window
- row_number()
- count()
- sum()
- avg()
- Pipeline Class Design

---

# Execution Instructions

Install PySpark

```bash
pip install pyspark
```

Run any individual script

```bash
python pyspark/01_ingestion_inspection.py
```

Run the complete ETL pipeline

```bash
python pyspark/08_full_etl_pipeline.py
```

If running locally, update the dataset paths inside the scripts to match your local directory structure.

---

# Learning Outcomes

After completing this project you will be able to:

- Read CSV and JSON datasets in PySpark
- Inspect schemas and data quality
- Handle missing values
- Perform SQL-to-PySpark conversions
- Implement joins and aggregations
- Build reusable ETL pipelines
- Apply Window Functions
- Create executive reporting tables
- Execute end-to-end data engineering workflows
- Understand production-style Spark ETL design

---

# Technologies Used

- SQL
- PySpark
- Apache Spark
- Python
- Google Colab
- Jupyter Notebook

---

# Project Goal

This project serves as the final phase of SQL-to-PySpark practice by demonstrating how traditional SQL-based ETL operations can be translated into scalable PySpark workflows suitable for modern data engineering pipelines.
