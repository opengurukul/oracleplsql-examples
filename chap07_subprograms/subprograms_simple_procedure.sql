SET SERVEROUTPUT ON
DECLARE
  in_string  VARCHAR2(100) := 'test string.';
  out_string VARCHAR2(200);
 
  PROCEDURE DOUBLE (
    original IN VARCHAR2,
    new_string OUT VARCHAR2)
  AS
  BEGIN
      new_string := original || ' + ' || original;
  EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Output buffer not long enough.');
  END;
 
BEGIN
  DOUBLE(in_string, out_string);
  DBMS_OUTPUT.PUT_LINE(in_string || ' - ' || out_string);
END;
