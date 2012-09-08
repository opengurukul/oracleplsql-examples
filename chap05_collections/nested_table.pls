SET SERVEROUTPUT ON
 
DECLARE TYPE color_t
 
IS
 
TABLE OF VARCHAR2(30);
 
colors color_t;
 
idx NUMBER;
 
BEGIN colors := color_t('Red', 'Blue', 'Green');
 
idx := colors.FIRST;
 
WHILE (idx IS NOT NULL) LOOP DBMS_OUTPUT.put_line(TO_CHAR(idx) || ' ' || colors(idx));
 
idx := colors.next(idx);
 
END LOOP;
 
END;
