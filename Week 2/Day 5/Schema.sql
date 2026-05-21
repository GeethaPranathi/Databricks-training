CREATE DATABASE IF NOT EXISTS test;

USE test;

-- =========================================
-- NUMBER MANIPULATION FUNCTIONS IN MYSQL
-- =========================================

CREATE TABLE employee_salary (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    tax_percent DECIMAL(5,2),
    experience_years INT
);

INSERT INTO employee_salary VALUES
(1, 'Karthik', 75000.75, 5000.50, 10.00, 6),
(2, 'Veena', 65000.40, 4000.25, 8.50, 4),
(3, 'Ravi', 85000.90, 6000.75, 12.00, 8),
(4, 'Anil', 70000.10, NULL, 9.00, 5),
(5, 'Suresh', 60000.55, 3000.30, 7.50, 3);

-- =========================================
-- REGEX PRACTICE TABLE
-- =========================================

CREATE TABLE regex_practice (
    id INT,
    full_text VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(30),
    mixed_value VARCHAR(100)
);

INSERT INTO regex_practice VALUES
(1,'EMP001_IN_91','karthik@gmail.com','+91-9876543210','abc123xyz'),
(2,'EMP002_US_01','rahul@yahoo.com','+1-7654321098','test45done'),
(3,'EMP003_UK_44','john@outlook.com','+44-9988776655','run9fast'),
(4,'EMP004_AU_61','steve@gmail.com','+61-8899776655','go88home'),
(5,'EMP005_IN_91','arjun@company.in','+91-7788996655','data77lake');
