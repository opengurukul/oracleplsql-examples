SET SERVEROUTPUT ON
DECLARE
  country VARCHAR2(128);
 
BEGIN
   -- assign value using :=
   country := 'India';  
 
   DBMS_OUTPUT.put_line('country = ' || country);
END;
