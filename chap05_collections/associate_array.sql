DECLARE
TYPE nested_type IS TABLE OF VARCHAR2(30);
TYPE varray_type IS VARRAY(5) OF INTEGER;
TYPE assoc_array_num_type IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
TYPE assoc_array_str_type IS TABLE OF VARCHAR2(32) INDEX BY PLS_INTEGER;
TYPE assoc_array_str_type2 IS TABLE OF VARCHAR2(32) INDEX BY VARCHAR2(64);
v1 nested_type;
v2 varray_type;
v3 assoc_array_num_type;
v4 assoc_array_str_type;
v5 assoc_array_str_type2;
BEGIN
-- an arbitrary number of strings can be inserted v1
v1 := nested_type('Shipping','Sales','Finance','Payroll'); 
v2 := varray_type(1, 2, 3, 4, 5); -- Up to 5 integers
v3(99) := 10; -- Just start assigning to elements
v3(7) := 100; -- Subscripts can be any integer values
v4(42) := 'Smith'; -- Just start assigning to elements
v4(54) := 'Jones'; -- Subscripts can be any integer values
v5('Canada') := 'North America'; -- Just start assigning to elements
v5('Greece') := 'Europe'; -- Subscripts can be string values
END;
/
 
