# PySpark Phase 4A – Bucketing & Customer Segmentation

## Overview

This project demonstrates multiple customer segmentation techniques using **PySpark**. It transforms continuous customer spending values into meaningful business categories such as **Gold**, **Silver**, and **Bronze** customers using different bucketing and ranking approaches. The project compares traditional business-rule segmentation with machine learning-based bucketing methods available in Apache Spark.

---

# Objectives

- Calculate total customer spending from sales transactions
- Perform customer segmentation using multiple approaches
- Compare rule-based and data-driven bucketing techniques
- Understand business and analytical customer segmentation
- Implement both Spark SQL and PySpark DataFrame solutions

---

# Technologies Used

- Python
- PySpark
- Apache Spark
- Spark SQL
- Spark MLlib
- Google Colab
- Jupyter Notebook

---

# Dataset

### sales.csv

Contains customer transaction records.

Columns include:

- sale_id
- customer_id
- product_id
- sale_date
- quantity
- total_amount

The dataset is used to calculate total spending for each customer before applying different segmentation techniques.

---

# Project Workflow

## Step 1 – Data Ingestion

Load the sales dataset into a Spark DataFrame.

- Read CSV file
- Infer schema
- Inspect data structure

---

## Step 2 – Data Cleaning

Prepare the dataset for analysis.

Tasks include:

- Remove missing values
- Remove duplicate records
- Validate transaction amounts
- Verify data types

---

## Step 3 – Customer Spending Calculation

Aggregate sales data to calculate total spending for every customer.

Example output:

| customer_id | total_spend |
|-------------|-------------|

---

## Step 4 – Customer Segmentation

Apply multiple bucketing techniques to categorize customers based on spending behavior.

---

# Bucketing Methods

## 1. Business Rule-Based Segmentation

Categorize customers using conditional logic.

### Business Rules

- **Gold** → Total Spend > 10000
- **Silver** → Total Spend between 5000 and 10000
- **Bronze** → Total Spend < 5000

This approach is implemented using PySpark's `when()` function.

---

## 2. SQL CASE Statement

Perform segmentation using Spark SQL.

Example logic:

- CASE WHEN Total Spend > 10000 THEN 'Gold'
- CASE WHEN Total Spend BETWEEN 5000 AND 10000 THEN 'Silver'
- ELSE 'Bronze'

---

## 3. Spark MLlib Bucketizer

Use **Bucketizer** to divide continuous spending values into predefined numerical ranges.

Features:

- Automatic bucket assignment
- Scalable MLlib transformation
- Suitable for machine learning preprocessing

---

## 4. Quantile-Based Segmentation

Create customer groups based on the distribution of spending values.

Example:

- Top 25%
- Middle 50%
- Bottom 25%

This method adapts to the data rather than fixed business thresholds.

---

## 5. Window-Based Customer Ranking

Rank customers using Spark Window Functions.

Functions used include:

- percent_rank()
- dense_rank()
- rank()

This enables percentile-based customer analysis.

---

# Tasks Completed

- Calculate customer spending
- Gold, Silver, and Bronze segmentation
- Segment-wise customer count
- Quantile-based customer grouping
- MLlib Bucketizer implementation
- Window-based customer ranking
- Spark SQL implementation
- Equivalent PySpark DataFrame implementation

---

# SQL and PySpark Implementation

Each segmentation technique is implemented using:

### Spark SQL

- CASE WHEN
- GROUP BY
- ORDER BY
- Aggregate Functions

### PySpark DataFrame API

- groupBy()
- agg()
- withColumn()
- when()
- Bucketizer
- Window Functions
- percent_rank()
- dense_rank()
- rank()

This highlights the equivalence between SQL queries and PySpark transformations.

---

# Key Concepts Covered

- Customer Segmentation
- Bucketing
- Conditional Logic
- SQL CASE Statements
- Spark MLlib Bucketizer
- Quantile-Based Segmentation
- Window Functions
- Ranking
- Business Analytics
- Data Aggregation
- SQL to PySpark Conversion

---

# Learning Outcomes

After completing this project, you will be able to:

- Calculate customer spending using PySpark
- Implement multiple customer segmentation strategies
- Apply business-rule and statistical bucketing techniques
- Use Spark MLlib Bucketizer for feature transformation
- Rank customers using Window Functions
- Compare different segmentation methods
- Convert SQL-based analytics into PySpark DataFrame operations
- Build scalable customer analytics pipelines

---

# Project Structure

```text
Phase-4A-Bucketing/
│
├── README.md
├── Phase4A_Bucketing.ipynb
│
├── data/
│   └── sales.csv
│
├── sql/
│   ├── 01_customer_spending.sql
│   ├── 02_business_segmentation.sql
│   ├── 03_case_segmentation.sql
│   ├── 04_quantile_segmentation.sql
│   └── 05_window_ranking.sql
│
├── pyspark/
│   ├── 01_customer_spending.py
│   ├── 02_business_segmentation.py
│   ├── 03_bucketizer.py
│   ├── 04_quantile_segmentation.py
│   ├── 05_window_ranking.py
│   └── 06_complete_segmentation_pipeline.py
│
└── output/
    ├── segmented_customers.csv
    ├── customer_rankings.csv
    └── reports/
```

---

# Sample Outputs

The project generates several analytical reports, including:

- Customer Spending Summary
- Gold, Silver, and Bronze Customer List
- Segment-wise Customer Count
- Bucketizer-Based Segmentation
- Quantile-Based Customer Groups
- Customer Percentile Rankings
- Ranked Customer Report

---

# Future Enhancements

- Dynamic bucketing based on configurable thresholds
- K-Means clustering for unsupervised customer segmentation
- Customer Lifetime Value (CLV) analysis
- Interactive dashboards using Power BI or Tableau
- Integration with cloud data storage
- Real-time segmentation using Spark Structured Streaming
- Predictive customer behavior analysis using Spark MLlib

---

# Project Goal

This project demonstrates various customer segmentation techniques using Apache Spark and PySpark. By comparing business-rule, statistical, and machine learning-based bucketing methods, it provides practical experience in building scalable customer analytics solutions for real-world business intelligence and data engineering applications.
