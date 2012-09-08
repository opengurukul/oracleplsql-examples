SET SERVEROUTPUT ON
 
DECLARE
  x NUMBER(3);
 
BEGIN
  x := 123.89;
  DBMS_OUTPUT.PUT_LINE('The value of x is ' || TO_CHAR(x));
 
END;
 
