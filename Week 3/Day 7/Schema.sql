-- =========================================
-- WINDOW FUNCTIONS PRACTICE IN MYSQL
-- =========================================

-- =========================================
-- CREATE TABLE : EMPLOYEES
-- =========================================

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);

-- =========================================
-- INSERT DATA : EMPLOYEES
-- =========================================

INSERT INTO employees VALUES
(1, 'Amit', 'HR', 50000, '2023-01-01'),
(2, 'Ravi', 'IT', 65000, '2023-01-05'),
(3, 'Sneha', 'Finance', 70000, '2023-01-03'),
(4, 'Kiran', 'IT', 60000, '2023-01-10'),
(5, 'Priya', 'HR', 55000, '2023-01-07'),
(6, 'Arjun', 'Finance', 75000, '2023-01-12'),
(7, 'Neha', 'IT', 62000, '2023-01-15'),
(8, 'Vikas', 'HR', 52000, '2023-01-18'),
(9, 'Anjali', 'Finance', 72000, '2023-01-20'),
(10, 'Rahul', 'IT', 68000, '2023-01-25');

-- =========================================
-- CREATE TABLE : ORDERS
-- =========================================

CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    amount INT,
    order_date DATE
);

-- =========================================
-- INSERT DATA : ORDERS
-- =========================================

INSERT INTO orders VALUES
(1, 'Amit', 'Chennai', 2000, '2023-01-01'),
(2, 'Ravi', 'Hyderabad', 1500, '2023-01-02'),
(3, 'Sneha', 'Chennai', 3000, '2023-01-03'),
(4, 'Kiran', 'Bangalore', 2500, '2023-01-04'),
(5, 'Priya', 'Chennai', 2000, '2023-01-05'),
(6, 'Arjun', 'Hyderabad', 1800, '2023-01-06'),
(7, 'Neha', 'Bangalore', 2200, '2023-01-07'),
(8, 'Vikas', 'Chennai', 3000, '2023-01-08'),
(9, 'Anjali', 'Hyderabad', 1700, '2023-01-09'),
(10, 'Rahul', 'Bangalore', 2600, '2023-01-10'),
(11, 'Suresh', 'Chennai', 2800, '2023-01-11'),
(12, 'Pooja', 'Hyderabad', 1600, '2023-01-12'),
(13, 'Manoj', 'Bangalore', 2400, '2023-01-13'),
(14, 'Divya', 'Chennai', 2100, '2023-01-14'),
(15, 'Karthik', 'Hyderabad', 1900, '2023-01-15'),
(16, 'Meena', 'Bangalore', 2300, '2023-01-16'),
(17, 'Raj', 'Chennai', 2700, '2023-01-17'),
(18, 'Simran', 'Hyderabad', 2000, '2023-01-18'),
(19, 'Deepak', 'Bangalore', 2500, '2023-01-19'),
(20, 'Nisha', 'Chennai', 2600, '2023-01-20');
