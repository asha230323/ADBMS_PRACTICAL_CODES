SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT ID, Name FROM Student;

    v_id Student.ID%TYPE;
    v_name Student.Name%TYPE;

BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO v_id, v_name;
        EXIT WHEN c1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            v_id || ' ' || v_name
        );
    END LOOP;

    CLOSE c1;
END;
/
