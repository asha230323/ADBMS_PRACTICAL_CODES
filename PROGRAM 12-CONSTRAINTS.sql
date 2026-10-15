CREATE TABLE Student (
    ID NUMBER PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL,
    Age NUMBER CHECK (Age >= 18),
    Email VARCHAR2(50) UNIQUE,
    City VARCHAR2(30) DEFAULT 'Chennai'
);

INSERT INTO Student
VALUES (1, 'Asha', 20, 'asha@gmail.com', 'Cuddalore');

INSERT INTO Student
VALUES (2, 'Priya', 21, 'priya@gmail.com', DEFAULT);

SELECT * FROM Student;
