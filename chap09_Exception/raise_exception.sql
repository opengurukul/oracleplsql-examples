DECLARE
  my_ename emp.ename%TYPE :=‘BLAKE’;
  assigned_projects NUMBER;
  too_few_projects
EXCEPTION
BEGIN ----  get no of projects assigned to BLAKE
  IF assigned_project < 3 THEN
    RAISE too_few_projects;
  END IF;
EXCEPTION --begin the exception handlers
WHEN too_few_projects THEN
  INSERT
  INTO temp VALUES
    (
      my_ename,
      assigned_projects,
      ’LESS THAN 3 PROJECTS!’
    )
    COMMIT;
END;
