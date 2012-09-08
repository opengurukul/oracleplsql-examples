SET SERVEROUTPUT ON
DECLARE
  firstname CHAR(10 CHAR);
  lastname  CHAR(10 BYTE);
BEGIN
  firstname := 'Swathi';
  lastname  := 'Matsya';
  DBMS_OUTPUT.PUT_LINE('First Name = ' || firstname);
  DBMS_OUTPUT.PUT_LINE('Last Name = ' || lastname);
END;
