-- This is source file
SET serveroutput ON;
DECLARE
  min_id employees.employee_id%TYPE;
  max_id employees.employee_id%TYPE;
  mail employees.email%TYPE;
BEGIN
  SELECT MIN(employee_id) INTO min_id FROM employees;
  SELECT MAX(employee_id) INTO max_id FROM employees;
 
  FOR id IN min_id..max_id
  LOOP
    SELECT EMAIL INTO MAIL FROM EMPLOYEES WHERE employee_id=id;
 
    DBMS_OUTPUT.PUT_LINE(' EMPLOYEE_ID : ' || TO_CHAR(id) || ' EMAIL : ' || MAIL);
  END LOOP;
END;
/
