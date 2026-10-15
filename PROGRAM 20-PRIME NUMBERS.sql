SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 7;
    i NUMBER := 2;
    flag NUMBER := 0;
BEGIN
    IF n <= 1 THEN
        flag := 1;
    ELSE
        WHILE i <= SQRT(n) LOOP
            IF MOD(n, i) = 0 THEN
                flag := 1;
                EXIT;
            END IF;
            i := i + 1;
        END LOOP;
    END IF;

    IF flag = 0 THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is a Prime Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Prime Number');
    END IF;
END;
/
