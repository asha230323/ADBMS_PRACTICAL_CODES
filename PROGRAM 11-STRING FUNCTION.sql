SET SERVEROUTPUT ON;

CREATE TABLE Student (
    ID NUMBER,
    Name VARCHAR2(30)
);

INSERT INTO Student VALUES (1, 'asha');

COMMIT;

SELECT UPPER(Name) FROM Student;

SELECT LOWER(Name) FROM Student;

SELECT INITCAP(Name) FROM Student;

SELECT LENGTH(Name) FROM Student;

SELECT SUBSTR(Name, 2, 2) FROM Student;

SELECT INSTR(Name, 's') FROM Student;

SELECT REPLACE(Name, 'a', 'p') FROM Student;

SELECT LPAD(Name, 8, '*') FROM Student;

SELECT RPAD(Name, 8, '*') FROM Student;

SELECT TRIM('  ASHA  ') FROM DUAL;
