CREATE FUNCTION get_bal(acc_no NUMBER(4)) RETURN NUMBER(11,2);
  AS
    acc_bal NUMBER(11,2);
  BEGIN
    SELECT balance INTO acc_bal FROM accounts WHERE account_id_no=acc_no;
    RETURN (acc_bal);
  END; 
