SET SERVEROUTPUT ON
DECLARE
  i NUMBER := 0;
BEGIN
  WHILE (i != 5) 
  LOOP
    i := i + 1 ;
    DBMS_OUTPUT.PUT_LINE('i = ' || i);
  END LOOP;
END;
