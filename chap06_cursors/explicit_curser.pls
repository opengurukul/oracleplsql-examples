DECLARE
  sal_limit NUMBER ( 4 ) := 0 ;
  my_ename emp.ename%TYPE ;
  my_sal emp.sal%TYPE ;
  CURSOR my_cursor
  IS
    SELECT ename , sal FROM emp WHERE sal > sal_limit ;
BEGIN
  sal_limit := 1200 ;
  OPEN my_cursor INTO my_ename ,
  my_sal ;
  LOOP
    FETCH my_cursor INTO my_ename , my_sal ;
    EXIT
  WHEN my_cursor%NOTFOUND ;
    -nothing returned
    INSERT INTO new_table VALUES
      ( my_ename , my_sal
      ) ;
  END LOOP ;
  CLOSE my_cursor ;
  COMMIT ;
END ;
