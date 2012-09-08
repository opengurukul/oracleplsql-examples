SET SERVEROUTPUT ON
DECLARE
  TYPE month_t IS VARRAY(12) OF VARCHAR2(20);
  months month_t;
  idx NUMBER;
BEGIN
 
  months     := month_t('Jan', 'Feb', 'Mar');
 
  idx        := months.FIRST;
 
  WHILE (idx IS NOT NULL)
  LOOP
 
    DBMS_OUTPUT.put_line(TO_CHAR(idx) || ' ' || months(idx));
 
    idx := months.next(idx);
 
  END LOOP;
 
END;
