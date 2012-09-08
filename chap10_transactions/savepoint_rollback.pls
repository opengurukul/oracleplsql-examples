SET SERVEROUTPUT ON
 
DECLARE
    v_email employees.email%TYPE;
BEGIN
 
    SELECT email INTO v_email FROM employees WHERE employee_id = 100;
    DBMS_OUTPUT.PUT_LINE('email = ' || v_email);
 
    SAVEPOINT A;
 
    UPDATE EMPLOYEES SET EMAIL='opengurukul@gmail.com' WHERE employee_id=100;
 
    SELECT email INTO v_email FROM employees WHERE employee_id = 100;
 
    DBMS_OUTPUT.PUT_LINE('email = ' || v_email);
 
    ROLLBACK TO A ;
 
    SELECT email INTO v_email FROM employees WHERE employee_id = 100;
    DBMS_OUTPUT.PUT_LINE('email = ' || v_email);
 
END;
