-- This is source file
SET serveroutput ON;
ACCEPT country_p CHAR PROMPT 'Enter country (india or australia) : '
 
DECLARE
  country CHAR(20);
BEGIN
  country   := '&country_p';
 
  IF country = 'australia' THEN
    GOTO australia;
  ELSIF country = 'india' THEN
    GOTO india;
  ELSE
    GOTO none;
  END IF;
 
  <<india>>
           DBMS_OUTPUT.put_line('sachin');
           GOTO none;
  <<australia>>
           DBMS_OUTPUT.put_line('ricky');
  <<none>>
           NULL;
END;
