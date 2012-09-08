CREATE OR REPLACE PROCEDURE add_job_history
  (  p_emp_id          job_history.employee_id%TYPE
   , p_start_date      job_history.start_date%TYPE
   , p_end_date        job_history.end_date%TYPE
   , p_job_id          job_history.job_id%TYPE
   , p_department_id   job_history.department_id%TYPE
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;
