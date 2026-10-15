SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 10;
    total NUMBER := 0;
BEGIN
    FOR i IN 1..n LOOP
        total := total + i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of Series = ' || total);
END;
/
