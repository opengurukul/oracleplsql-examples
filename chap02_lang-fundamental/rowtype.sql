SET SERVEROUTPUT ON
 
DECLARE CURSOR c1
 
IS
 
SELECT last_name, salary, hire_date, job_id FROM employees WHERE employee_id = 120;
 
employee_rec c1%ROWTYPE; BEGIN OPEN c1;
 
FETCH c1 INTO employee_rec;
 
DBMS_OUTPUT.PUT_LINE('Employee name: ' || employee_rec.last_name);
 
END;
