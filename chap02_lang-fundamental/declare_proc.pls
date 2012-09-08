SET SERVEROUTPUT ON
 
DECLARE
   in_string VARCHAR2(100) := 'This is my test string.';
   out_string VARCHAR2(200);
 
   PROCEDURE double ( original IN VARCHAR2, new_string OUT VARCHAR2 ) AS
   BEGIN
         new_string := original || original;
   END;
BEGIN
 
   double(in_string, out_string);
 
   DBMS_OUTPUT.PUT_LINE('out_string = ' || out_string);
 
END;
