-- display a prompt and accept value into a variable.
-- The value will be stored in ENUMBER
ACCEPT ENUMBER NUMBER PROMPT 'Employee ID :'
SELECT EMAIL FROM EMPLOYEES WHERE EMPLOYEE_ID=&ENUMBER;
