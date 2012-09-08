DECLARE
  sal_limit NUMBER ( 4 )  := 0 ;
  total_sal NUMBER (9,2 ) := 0;
  CURSOR my_cursor
  IS
    SELECT ename , sal FROM emp WHERE sa l > sal_limit ;
BEGIN
  sal_limit := 1200 ;
  -- implicitly  OPEN done next
  FOR cursor_row IN my_cursor
  LOOP
    -- an implicit fetch done here
    INSERT
    INTO new_table VALUES
      (
        cursor_row.ename ,
        CURSOR.sal
      ) ;
    total_sal := total_sal + cursor_row.sal
  END LOOP ; --an implicit close done here.
  COMMIT ;
END ;

