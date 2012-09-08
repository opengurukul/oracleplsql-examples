-- Associative array traversal using while loop
SET serveroutput ON
DECLARE
  -- declare hash
  TYPE word_num_t IS TABLE OF NUMBER INDEX BY VARCHAR2(30);
  wn word_num_t;
 
  KEY VARCHAR2(30);
BEGIN
  wn('one')   := 1;
  wn('two')   := 2;
  wn('three') := 3;
  wn('four')  := 4;
 
  KEY      := wn.FIRST;
 
  WHILE (KEY IS NOT NULL)
  LOOP
 
    DBMS_OUTPUT.put_line(KEY || ' = ' || TO_CHAR(wn(KEY)));
 
    KEY := wn.next(KEY);
 
  END LOOP;
END;
