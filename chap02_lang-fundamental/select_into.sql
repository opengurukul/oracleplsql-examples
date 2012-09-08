SET SERVEROUTPUT ON
 
DECLARE
  bonus NUMBER(8,2);
  emp_id NUMBER(6) := 100;
 
BEGIN
  SELECT salary * 0.10 INTO bonus
  FROM employees
  WHERE employee_id = emp_id;
 
  DBMS_OUTPUT.PUT_LINE('Bonus = ' || bonus);
 
END;
 
/
