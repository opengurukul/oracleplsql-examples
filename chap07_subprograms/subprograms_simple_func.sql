SET SERVEROUTPUT ON
DECLARE
 
  FUNCTION square(original NUMBER)
    RETURN NUMBER
  AS
    original_squared NUMBER;
  BEGIN
    original_squared := original * original;
    RETURN original_squared;
  END;
 
BEGIN
    DBMS_OUTPUT.PUT_LINE(square(100));
END;
