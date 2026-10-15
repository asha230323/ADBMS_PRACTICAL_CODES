SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 0;
    b NUMBER := 1;
    c NUMBER;
    n NUMBER := 7;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');

    FOR i IN 1..n LOOP
        DBMS_OUTPUT.PUT(a || ' ');
        c := a + b;
        a := b;
        b := c;
    END LOOP;

    DBMS_OUTPUT.NEW_LINE;
END;
/
