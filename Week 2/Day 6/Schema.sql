-- =========================================
-- REGEX FOUNDATION QUERIES
-- =========================================

-- No table required for basic REGEX validation queries

-- =========================================
-- CREATE TABLE
-- =========================================

CREATE TABLE flipkart_raw_data (
    order_id INT,
    customer_id VARCHAR(20),
    product VARCHAR(50),
    category VARCHAR(50),
    city VARCHAR(50),
    order_date DATE,
    amount INT,
    quantity INT
);

-- =========================================
-- INSERT DATA
-- =========================================

INSERT INTO flipkart_raw_data VALUES
(1001,'C101','Laptop','Electronics','Hyderabad','2024-01-01',50000,1),
(1002,'C102','Mobile','Electronics','Chennai','2024-01-02',30000,2),
(1003,'C103','Tablet','Electronics',NULL,'2024-01-03',25000,1),
(1004,'C104','Watch','Accessories','Mumbai','2024-01-04',NULL,3),
(1005,'C105','Headphones','Accessories','Delhi','2024-01-05',-2000,2),
(1001,'C101','Laptop','Electronics','Hyderabad','2024-01-06',52000,1),
(1006,'C106','Mobile','Electronics',NULL,'2024-01-07',-3000,4),
(1007,'C107','Tablet','Electronics','Bangalore','2024-01-08',15000,1),
(1008,'C108','Watch','Accessories','Mumbai','2024-01-09',NULL,2),
(1002,'C102','Mobile','Electronics','Chennai','2024-01-10',32000,2);
