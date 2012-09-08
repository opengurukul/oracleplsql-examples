CREATE PROCEDURE fire_employee(empid NUMBER)
AS
BEGIN
  IF empid<=0 THEN
    raise_application_error (-20100,’Employee NUMBER must be> 0’);
  ELSE
    DELETE FROM emp WHERE EMPNO =EMPID;
  END IF;
END;
