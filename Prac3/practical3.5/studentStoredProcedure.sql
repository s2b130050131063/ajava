CREATE OR REPLACE FUNCTION ret_data()
RETURNS TABLE (rollno varchar, name varchar, branch varchar) AS
$$
BEGIN 
RETURN QUERY
SELECT * 
FROM student
WHERE student.branch = 'CSE';
END;
$$
LANGUAGE 'plpgsql' STABLE;
