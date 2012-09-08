-- This is source file
SET serveroutput ON;
ACCEPT v_emp_id PROMPT 'Employee ID : '
DECLARE
BEGIN
  IF ( &v_emp_id < 50 ) THEN
    DBMS_OUTPUT.PUT_LINE('employee id < 50');
  ELSE
    DBMS_OUTPUT.PUT_LINE('employee id >= 50');
  END IF ;
END;
