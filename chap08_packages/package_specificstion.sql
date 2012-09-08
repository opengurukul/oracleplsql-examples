CREATE PACKAGE trans_data AS -- bodiless package
 TYPE TimeRec IS RECORD (
 minutes SMALLINT,
 hours SMALLINT);
 TYPE TransRec IS RECORD (
 category VARCHAR2(10),
 account INT,
 amount REAL,
 time_of TimeRec);
 minimum_balance CONSTANT REAL := 10.00;
 number_processed INT;
 insufficient_funds EXCEPTION;
END trans_data;
/
 
