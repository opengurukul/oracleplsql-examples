CREATE OR REPLACE TRIGGER JOBS_HISTORY_TRIGGER BEFORE
  UPDATE OF MIN_SALARY ON JOBS FOR EACH ROW BEGIN
  INSERT
  INTO jobs_history VALUES
    (
      :old.job_id,
      :old.job_title,
      :old.min_salary,
      :old.max_salary
    );
END; 
