SET SERVEROUTPUT ON
 
DECLARE
  -- declare constants
  credit_limit CONSTANT NUMBER := 5000.00;
  max_days_in_year CONSTANT INTEGER := 366;
 
BEGIN
 
  DBMS_OUTPUT.PUT_LINE('credit_limit = ' || TO_CHAR(credit_limit));
  DBMS_OUTPUT.PUT_LINE('max_days_in_year = ' || TO_CHAR(max_days_in_year));
 
END;
