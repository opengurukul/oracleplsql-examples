CREATE OR REPLACE PROCEDURE raise_emp_salary (column_value NUMBER,
 emp_column VARCHAR2, amount NUMBER) IS
 v_column VARCHAR2(30);
 sql_stmt VARCHAR2(200);

BEGIN
-- determine if a valid column name has been given as input
 SELECT COLUMN_NAME INTO v_column FROM USER_TAB_COLS
 WHERE TABLE_NAME = 'EMPLOYEES' AND COLUMN_NAME = emp_column;
 sql_stmt := 'UPDATE employees SET salary = salary + :1 WHERE '
 || v_column || ' = :2';

 EXECUTE IMMEDIATE sql_stmt USING amount, column_value;
 IF SQL%ROWCOUNT > 0 THEN
 DBMS_OUTPUT.PUT_LINE('Salaries have been updated for: ' || emp_column
 || ' = ' || column_value);
 END IF;
 EXCEPTION
 WHEN NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE ('Invalid Column: ' || emp_column);
END raise_emp_salary;
/

DECLARE
 plsql_block VARCHAR2(500);

BEGIN
-- note the semi-colons (;) inside the quotes '...'
 plsql_block := 'BEGIN raise_emp_salary(:cvalue, :cname, :amt); END;';
 EXECUTE IMMEDIATE plsql_block USING 110, 'DEPARTMENT_ID', 10;
 EXECUTE IMMEDIATE 'BEGIN raise_emp_salary(:cvalue, :cname, :amt); END;'
 USING 112, 'EMPLOYEE_ID', 10;
END;

/

DECLARE
 sql_stmt VARCHAR2(200);
 v_column VARCHAR2(30) := 'DEPARTMENT_ID';
 dept_id NUMBER(4) := 46;
 dept_name VARCHAR2(30) := 'Special Projects';
 mgr_id NUMBER(6) := 200;
 loc_id NUMBER(4) := 1700;
BEGIN
-- note that there is no semi-colon (;) inside the quotes '...'
 EXECUTE IMMEDIATE 'CREATE TABLE bonus (id NUMBER, amt NUMBER)';
 sql_stmt := 'INSERT INTO departments VALUES (:1, :2, :3, :4)';
 EXECUTE IMMEDIATE sql_stmt USING dept_id, dept_name, mgr_id, loc_id;
 EXECUTE IMMEDIATE 'DELETE FROM departments WHERE ' || v_column || ' = :num'
 USING dept_id;
 EXECUTE IMMEDIATE 'ALTER SESSION SET SQL_TRACE TRUE';
 EXECUTE IMMEDIATE 'DROP TABLE bonus';
END;
/
