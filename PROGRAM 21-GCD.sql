SET SERVEROUTPUT ON;

DECLARE
    a NUMBER := 12;
    b NUMBER := 18;
    temp NUMBER;
BEGIN
    WHILE b != 0 LOOP
        temp := MOD(a, b);
        a := b;
        b := temp;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('GCD = ' || a);
END;
/
