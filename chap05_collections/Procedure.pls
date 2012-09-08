CREATE PROCEDURE fire_employee(empid NUMBER)
AS
BEGIN
  …
  DELETE FROM emp WHERE empno= fire_employee.empid;
END
