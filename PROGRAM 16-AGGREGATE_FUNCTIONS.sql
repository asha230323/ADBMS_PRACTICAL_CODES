-- Create Employee Table
CREATE TABLE Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(30),
    Salary NUMBER
);

-- Insert Records
INSERT INTO Employee VALUES (1, 'Asha', 30000);
INSERT INTO Employee VALUES (2, 'Priya', 40000);
INSERT INTO Employee VALUES (3, 'Ravi', 50000);
INSERT INTO Employee VALUES (4, 'Kumar', 60000);
INSERT INTO Employee VALUES (5, 'Divya', 35000);

COMMIT;

-- Display All Records
SELECT * FROM Employee;

-- 1. COUNT Function
SELECT COUNT(*) AS Total_Employees
FROM Employee;

-- 2. SUM Function
SELECT SUM(Salary) AS Total_Salary
FROM Employee;

-- 3. AVG Function
SELECT AVG(Salary) AS Average_Salary
FROM Employee;

-- 4. MAX Function
SELECT MAX(Salary) AS Highest_Salary
FROM Employee;

-- 5. MIN Function
SELECT MIN(Salary) AS Lowest_Salary
FROM Employee;
