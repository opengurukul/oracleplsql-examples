SET SERVEROUTPUT ON
 
BEGIN
 
$IF $$debug=TRUE $THEN
 
  DBMS_OUTPUT.PUT_LINE('debug is set');
 
$ELSE
 
  DBMS_OUTPUT.PUT_LINE('debug is not set');
 
$END
 
END;
