DECLARE
 TYPE NameList IS TABLE OF VARCHAR2(15);
 enames NameList;
 bonus_amt NUMBER := 50;
 sql_stmt VARCHAR(200);
BEGIN
 sql_stmt := 'UPDATE employees SET salary = salary + :1
 RETURNING last_name INTO :2';
 EXECUTE IMMEDIATE sql_stmt
 USING bonus_amt RETURNING BULK COLLECT INTO enames;
END;
/


