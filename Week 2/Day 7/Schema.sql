-- =========================================
-- NULL FUNCTIONS & STRING FUNCTIONS IN MYSQL
-- =========================================

-- =========================================
-- NULL FUNCTIONS PRACTICE
-- =========================================

-- =========================================
-- TABLE 1 : EMPLOYEES
-- =========================================

CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    salary INT,
    bonus INT,
    manager_id INT
);

INSERT INTO Employees VALUES
(1, 'Amit', 50000, NULL, 101),
(2, 'John', NULL, 5000, 102),
(3, 'Sara', 60000, NULL, NULL),
(4, 'David', NULL, NULL, 103),
(5, 'Priya', 45000, 3000, 101),
(6, 'Kiran', NULL, NULL, NULL),
(7, 'Ravi', 70000, 7000, 102),
(8, 'Neha', NULL, 2000, NULL);

-- =========================================
-- TABLE 2 : ORDERS
-- =========================================

CREATE TABLE Orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount INT,
    discount INT,
    coupon_code VARCHAR(20)
);

INSERT INTO Orders VALUES
(101, 'Amit', 1000, NULL, 'DISC10'),
(102, 'John', NULL, 50, NULL),
(103, 'Sara', 2000, NULL, 'DISC20'),
(104, 'David', NULL, NULL, NULL),
(105, 'Priya', 1500, 100, NULL),
(106, 'Kiran', NULL, NULL, 'DISC5'),
(107, 'Ravi', 3000, NULL, NULL),
(108, 'Neha', NULL, 200, 'DISC15');

-- =========================================
-- TABLE 3 : PRODUCTS
-- =========================================

CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50),
    price INT,
    category VARCHAR(50),
    stock INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 50000, 'Electronics', 10),
(2, 'Phone', NULL, 'Electronics', NULL),
(3, 'Tablet', 30000, NULL, 5),
(4, 'Headphones', NULL, NULL, NULL),
(5, 'Monitor', 20000, 'Electronics', 0),
(6, 'Keyboard', NULL, 'Accessories', 15),
(7, 'Mouse', 500, NULL, NULL),
(8, 'Printer', NULL, 'Electronics', 3);

-- =========================================
-- STRING FUNCTIONS TABLE
-- =========================================

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50),
    salary VARCHAR(20),
    remarks VARCHAR(200)
);

INSERT INTO employees VALUES
(1, 'Karthik Kondpak', 'karthik.k@gmail.com', 'Data Engineering', 'Hyderabad', '75000', ' Top performer '),

(2, 'Veena Reddy', 'veena_r@company.com', 'Analytics', 'Bangalore', '65000', 'Excellent communication'),

(3, 'Ravi kumar', 'ravi.kumar@org.in', 'Data Science', 'Chennai', '85000', 'Needs improvement'),

(4, 'Anil', 'anil@abc.com', 'DEVOPS', 'Pune', '70000', NULL),

(5, ' Suresh ', 'suresh@xyz.com', 'data engineering', ' hyderabad ', '60000', ' ');
