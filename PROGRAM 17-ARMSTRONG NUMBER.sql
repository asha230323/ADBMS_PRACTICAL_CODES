SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 153;
    temp NUMBER;
    digit NUMBER;
    total NUMBER := 0;
    len NUMBER;
BEGIN
    temp := n;
    len := LENGTH(TO_CHAR(n));

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        total := total + POWER(digit, len);
        temp := TRUNC(temp / 10);
    END LOOP;

    IF total = n THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is an Armstrong number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not an Armstrong number');
    END IF;
END;
/
