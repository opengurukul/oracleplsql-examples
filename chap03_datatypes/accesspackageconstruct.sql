PROCEDURE employee_admin
  /* The action to perform and the employee ID have been entered previously*/
  IF action ='HIRE'THEN scott.hire_fire.hire_employee(
      employee,
      ename,
      mgr,
      sal,
      comm,
      deptno);
    IF scott.hire_fire.valid =‘T’ THEN
      /*sports_club is another package that handles membership to the company sports club*/
      sports_club.add (employee)
    END IF;
  ELSIF action =“FIRE” THEN
    scott.hire_fire.fire_employee (employee);
    sports_club.remove (employee);
  END IF;
