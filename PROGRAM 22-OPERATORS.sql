SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 10;
    b NUMBER := 5;
BEGIN
    -- Arithmetic Operators
    DBMS_OUTPUT.PUT_LINE('Addition = ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Subtraction = ' || (a - b));
    DBMS_OUTPUT.PUT_LINE('Multiplication = ' || (a * b));
    DBMS_OUTPUT.PUT_LINE('Division = ' || (a / b));
    DBMS_OUTPUT.PUT_LINE('Modulus = ' || MOD(a, b));

    -- Relational Operators
    IF a > b THEN
        DBMS_OUTPUT.PUT_LINE('10 is greater than 5');
    END IF;

    IF a < b THEN
        DBMS_OUTPUT.PUT_LINE('10 is less than 5');
    ELSE
        DBMS_OUTPUT.PUT_LINE('10 is not less than 5');
    END IF;

    IF a != b THEN
        DBMS_OUTPUT.PUT_LINE('10 is not equal to 5');
    END IF;

    -- Logical Operators
    IF a > 0 AND b > 0 THEN
        DBMS_OUTPUT.PUT_LINE('AND Operator: TRUE');
    END IF;

    IF a > 0 OR b < 0 THEN
        DBMS_OUTPUT.PUT_LINE('OR Operator: TRUE');
    END IF;

    IF NOT (a < b) THEN
        DBMS_OUTPUT.PUT_LINE('NOT Operator: TRUE');
    END IF;
END;
/
