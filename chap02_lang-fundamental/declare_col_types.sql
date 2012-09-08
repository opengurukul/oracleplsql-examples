SET SERVEROUTPUT ON
 
DECLARE
  v_email employees.email%TYPE;
  v_employee_id employees.employee_id%TYPE := 100;
 
BEGIN
 
  SELECT email INTO v_email FROM employees WHERE employee_id = v_employee_id;
 
  DBMS_OUTPUT.PUT_LINE('email = ' || v_email);
 
END;
