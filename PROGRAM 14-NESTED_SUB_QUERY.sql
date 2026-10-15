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

-- Display All Employees
SELECT * FROM Employee;

-- Nested Subquery
SELECT Emp_ID, Emp_Name, Salary
FROM Employee
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employee
);
