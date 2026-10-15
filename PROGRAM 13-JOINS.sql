-- Create Department table
CREATE TABLE Department (
    Dept_ID NUMBER PRIMARY KEY,
    Dept_Name VARCHAR2(30)
);

-- Create Employee table
CREATE TABLE Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(30),
    Dept_ID NUMBER
);

-- Insert records into Department
INSERT INTO Department VALUES (10, 'IT');
INSERT INTO Department VALUES (20, 'HR');
INSERT INTO Department VALUES (30, 'Sales');

-- Insert records into Employee
INSERT INTO Employee VALUES (1, 'Asha', 10);
INSERT INTO Employee VALUES (2, 'Priya', 20);
INSERT INTO Employee VALUES (3, 'Ravi', 10);
INSERT INTO Employee VALUES (4, 'Kumar', NULL);

COMMIT;

-- 1. INNER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM Employee E
INNER JOIN Department D
ON E.Dept_ID = D.Dept_ID;

-- 2. LEFT JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM Employee E
LEFT JOIN Department D
ON E.Dept_ID = D.Dept_ID;

-- 3. RIGHT JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM Employee E
RIGHT JOIN Department D
ON E.Dept_ID = D.Dept_ID;

-- 4. FULL OUTER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM Employee E
FULL OUTER JOIN Department D
ON E.Dept_ID = D.Dept_ID;

-- 5. CROSS JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM Employee E
CROSS JOIN Department D;
