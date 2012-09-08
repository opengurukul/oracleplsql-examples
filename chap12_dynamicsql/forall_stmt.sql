DECLARE
 TYPE NumList IS TABLE OF NUMBER;
 TYPE NameList IS TABLE OF VARCHAR2(15);
 empids NumList;
 enames NameList;
BEGIN
 empids := NumList(101,102,103,104,105);
 FORALL i IN 1..5
 EXECUTE IMMEDIATE
 'UPDATE employees SET salary = salary * 1.04 WHERE employee_id = :1
 RETURNING last_name INTO :2'
 USING empids(i) RETURNING BULK COLLECT INTO enames;
END;
/
