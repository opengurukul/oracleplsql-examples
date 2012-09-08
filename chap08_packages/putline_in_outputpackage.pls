REM SET server output TO ON TO display output FROM DBMS_OUTPUT
SET SERVEROUTPUT ON
BEGIN
 DBMS_OUTPUT.PUT_LINE('These are the tables that ' || USER || ' owns:');
 FOR item IN (SELECT table_name FROM user_tables)
 LOOP
 DBMS_OUTPUT.PUT_LINE(item.table_name);
 END LOOP;
END;
/

 
