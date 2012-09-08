SET SERVEROUTPUT ON
 
DECLARE
  firstname VARCHAR2(14);
  birthday DATE;
BEGIN
 
  firstname := 'Swathi';
  birthday := '01-MAY-1990';
 
  DBMS_OUTPUT.PUT_LINE('Name = ' || firstname);
 
  -- default date format is dd-mon-yy
  DBMS_OUTPUT.PUT_LINE('BDAY = ' || TO_CHAR(birthday, 'DD-MON-YYYY'));
 
END;
 
/
 
