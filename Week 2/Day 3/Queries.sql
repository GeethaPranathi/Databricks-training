-- =========================================
-- QUERIES
-- =========================================

-- 1. Employees and Managers

SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- 2. Employees and Departments

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 3. Employees Reporting to Managers

SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;

-- 4. Total Employees Per Department

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 5. Employees Without Department

SELECT
    emp_name
FROM employees
WHERE dept_id IS NULL;

-- 6. Employees and Projects

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- 7. Employees With Projects

SELECT
    e.emp_name,
    p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;

-- 8. Projects Including Unassigned

SELECT
    e.emp_name,
    p.project_name
FROM employees e
RIGHT JOIN projects p
ON e.emp_id = p.emp_id;

-- 9. Employees and Salaries

SELECT
    e.emp_name,
    s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_id = s.emp_id;

-- 10. Employees and Department Names

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 11. Departments and Employees

SELECT
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- 12. Employees and Contacts

SELECT
    e.emp_name,
    c.phone
FROM employees e
LEFT JOIN contacts c
ON e.emp_id = c.emp_id;

-- 13. Full Join Simulation

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

UNION

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- 14. Employees Without Projects

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;

-- 15. Employees and Project Names

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- 16. All Projects and Employees

SELECT
    p.project_name,
    e.emp_name
FROM projects p
LEFT JOIN employees e
ON p.emp_id = e.emp_id;

-- 17. Employees with Manager and Project

SELECT
    e.emp_name,
    m.emp_name AS manager_name,
    p.project_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id
INNER JOIN projects p
ON e.emp_id = p.emp_id;

-- 18. Employees With Departments Only

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- 19. Employees in Multiple Departments

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- 20. Departments and Employees

SELECT
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- 21. Employees With Projects but No Department

SELECT
    e.emp_name,
    p.project_name
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id
WHERE e.dept_id IS NULL;

-- 22. Employee Count Per Department

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 23. Employees Reporting to Managers

SELECT
    e.emp_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;

-- 24. Employees and Managers Including NULL

SELECT
    e.emp_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- 25. Departments and Employee Count

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 26. Employees and Departments Including Empty Departments

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- 27. Employees Without Salary Records

SELECT
    e.emp_name
FROM employees e
LEFT JOIN salaries s
ON e.emp_id = s.emp_id
WHERE s.salary IS NULL;

-- 28. Employees and Projects Including NULL

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- 29. Employees with Department and Projects

SELECT
    e.emp_name,
    d.dept_name,
    p.project_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN projects p
ON e.emp_id = p.emp_id;

-- 30. Employees With and Without Department

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
