/* Package specification declaring procedures and variables for hiring and firing employees */
CERATE PACKEAGE hire_fire
AS
  /*Declare procedures */
PROCEDURE hire_employee(
    empno  NUMBER,
    ename  CHAR,
    mgr    NUMBER,
    sal    NUMBER,
    comm   NUMBER,
    deptno NUMBER);
PROCEDURE fire_employee(
    empid NUMBER);
  /*Global variable declaration*/
  valid CHAR(1);
END hire_fire;
 
