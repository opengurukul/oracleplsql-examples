DECLARE
 TYPE EmpCurTyp IS REF CURSOR;
 TYPE NumList IS TABLE OF NUMBER;
 TYPE NameList IS TABLE OF VARCHAR2(25);
 emp_cv EmpCurTyp;
 empids NumList;
 enames NameList;
 sals NumList;
BEGIN
 OPEN emp_cv FOR 'SELECT employee_id, last_name FROM employees';
 FETCH emp_cv BULK COLLECT INTO empids, enames;
 CLOSE emp_cv;
 EXECUTE IMMEDIATE 'SELECT salary FROM employees'
 BULK COLLECT INTO sals;
END;
/
