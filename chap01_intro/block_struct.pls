DECLARE
age NUMBER;
name VARCHAR2(128) := 'Surinder';
salary NUMBER;
BEGIN

age := 20;
SELECT income into salary from employee_income where name is '%Surinder%';

DBMS_OUTPUT.PUT_LINE('name: ' || name || 'age : ' || TO_CHAR(age));

END;
